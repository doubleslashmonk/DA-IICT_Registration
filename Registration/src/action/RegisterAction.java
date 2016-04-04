package action;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Properties;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import model.Degree;
import model.Registration;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

public class RegisterAction extends ActionSupport implements ModelDriven {
	Registration registration = new Registration();
	private String from = "doshi.kunj2692@gmail.com";
	private String password = "dnkrmj98986";
	private String to;
	private String subject = "Thank you for Registration";
	private String body;
	static Properties properties = new Properties();
	static {
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");
	}
	private File upload;
	private String uploadContentType;
	private String uploadFileName;

	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String RegisterUser() {
		int i=0;
		String name="";
		registration.setStudentName(registration.getStudentName().trim());
		Double sha=(Double.valueOf(Math.random()*122));
		HttpServletRequest request = ServletActionContext.getRequest();
		String destPath=request.getServletContext().getRealPath("/Resources/");
		System.out.println(destPath);
		String url=request.getRequestURL().substring(0, request.getRequestURL().lastIndexOf("/"));
		registration.setEmailActivationKey(sha(""+sha));
		body=url +"/EmailActivation?key="+sha(""+sha);
		to = registration.getStudentEmailAddress();
		SessionFactory sessionFactory = new Configuration().configure()
				.buildSessionFactory();
		try {
			registration.setStudentDOB();
			registration.setDemandDraftDate();
			
			Session session = sessionFactory.getCurrentSession();
			session.beginTransaction();
			session.save(registration);
			session.getTransaction().commit();
			registration.getDegree().setDegreeId(0);
			registration.getDegree().setDegreeType(true);
			registration.getDegree().setRegistrationId(registration.getRegistrationId());
			session=sessionFactory.openSession();
			session.beginTransaction();
			session.save(registration.getDegree());
			if(!(registration.getDegree1().getDegreeName()==null || registration.getDegree1().getDegreeName().length()==0)){
				registration.getDegree1().setDegreeId(1);
				registration.getDegree1().setRegistrationId(registration.getRegistrationId());
				session.save(registration.getDegree1());
			}
			if(!(registration.getDegree2().getDegreeName()==null || registration.getDegree2().getDegreeName().length()==0)){
				registration.getDegree2().setDegreeId(2);
				registration.getDegree2().setRegistrationId(registration.getRegistrationId());
				session.save(registration.getDegree2());
			}
			if(!(registration.getExam1().getExamName()==null || registration.getExam1().getExamName().length()==0)){
				registration.getExam1().setExamId(1);
				registration.getExam1().setRegistrationId(registration.getRegistrationId());
				session.save(registration.getExam1());
			}
			if(!(registration.getExam2().getExamName()==null || registration.getExam2().getExamName().length()==0)){
				registration.getExam2().setExamId(2);
				registration.getExam2().setRegistrationId(registration.getRegistrationId());
				session.save(registration.getExam2());
			}
			session.getTransaction().commit();
		} catch (Exception e) {
			System.out.print(e.getMessage());
			return "error";
		}
		while(i>=0){
			int temp=registration.getStudentName().indexOf(" ",i);
			if(temp<0){
				temp=registration.getStudentName().length();
				name+=registration.getStudentName().substring(i,temp);
				i=registration.getStudentName().indexOf(" ",i);
			}else{
				name+=registration.getStudentName().substring(i,temp);
				i=registration.getStudentName().indexOf(" ",i);
				name+="_";
			}
			i=(i == -1)? -1:i+1;
		}
		try {
			destPath+="/"+registration.getRegistrationId();
			File f=new File(destPath);
			if(!f.exists()) f.mkdir();
			File destFile = new File(destPath, registration.getRegistrationId()+"_"+name);
			FileUtils.copyFile(upload, destFile);
			registration.setPhoto(destFile.getAbsoluteFile().toString());
			
		} catch (IOException e) {
			e.printStackTrace();
			return "input";
		}
		try{
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.update(registration);
		tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			return "input";
		}
		
		try {
			javax.mail.Session session = javax.mail.Session.getDefaultInstance(
					properties, new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication(from, password);
						}
					});

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(body);
			Transport.send(message);
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
		
		return "success";
	}
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return registration;
	}

	public static String sha(String input) {
		String sha = null;
		if (null == input)
			return null;
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA");
			digest.update(input.getBytes(), 0, input.length());
			sha = new BigInteger(1, digest.digest()).toString(16);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return sha;
	}
	public boolean dateCheck(int date, int month, int year) {
		int arry31[] = {1,3,5,7,8,10,12};
		int arry30[] = {4,6,9,11};
		if (date == 31) {
			for (int i : arry31) {
				if(i == month) {
					return true;
				}
			}
			return false;
		}
		else if (date == 30){
			for (int i : arry30) {
				if(i == month) {
					return true;
				}
			}
			return false;
		}
		else if (date == 29 && month == 2) {
			if (year % 100 == 0) {
				if (year % 4 == 0) {
					return true;
				}
				return false;
			} else if(date % 4 == 0) {
				return true;
			} else {
				return false;
			}
		}
		return true;
	}
	public void validate(){
		boolean DOBvalidate=dateCheck(registration.getDOBDate(),registration.getDOBMonth(),registration.getDOBYear());
		if(!DOBvalidate)
			addFieldError("DOBDate", "Invalid Date");
		boolean DDvalidate=dateCheck(registration.getDDDate(),registration.getDDMonth(),registration.getDDYear());
		if(!DDvalidate)
			addFieldError("DDDate", "Invalid Date");
	}

}