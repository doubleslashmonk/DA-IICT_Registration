package action;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;



import model.Registration;

public class LoginAction extends ActionSupport implements ModelDriven{
	Registration registration=new Registration();
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
	public String login(){
		registration.setStudentDOB();
		List<Registration> register;
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess=sessionFactory.openSession();
		register=sess.createQuery("from Registration where RegistrationId="+registration.getRegistrationId()).list();
		if(!register.isEmpty()){
			Registration temp=register.get(0);
			if(temp.getRegistrationId()==registration.getRegistrationId() && temp.getStudentDOB().compareTo(registration.getStudentDOB())== 0){
				registration=temp;
				Map session = ActionContext.getContext().getSession();
				session.put("StudentName",temp.getStudentName());
				session.put("RegistrationId",temp.getRegistrationId());
				session.put("EmailId",temp.getStudentEmailAddress());
				Map request = (Map) ActionContext.getContext().get("request");
				session.put("isapproved",registration.getIsApproved());
				session.put("isEmailVerified", registration.isIsEmailVerified());
				return "success";
			}else{
				addFieldError("RegistrationId", "Registration Id or Birthdate is wrong");
				return "input";
			}
		}else{
			addFieldError("RegistrationId", "Registration Id or Birthdate is wrong");
			return "input";
		}
	}
	public void validate(){
		boolean dobdate=dateCheck(registration.getDOBDate(), registration.getDOBMonth(), registration.getDOBYear());
		if(!dobdate)
			addFieldError("DOBDate", "Invalid Date");
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
	@Override
	public Object getModel() {
		return registration;
	}
	public String execute(){
		Map session = ActionContext.getContext().getSession();
		if(session.containsKey("StudentName")){
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session sess=sessionFactory.openSession();
			registration=(Registration)sess.createQuery("from Registration where RegistrationId="+session.get("RegistrationId")).list().get(0);
			session.put("isapproved",registration.getIsApproved());
			session.put("isEmailVerified", registration.isIsEmailVerified());
			return "success";
		}
		else
			return "error";
	}
	public String logout(){
		Map session = ActionContext.getContext().getSession();
		session.remove("StudentName");
		session.remove("RegistrationId");
		session.remove("EmailId");
		session.remove("isapproved");
		session.remove("isEmailVerified");
		return "success";
	}
	public String resend(){
		Map session=ActionContext.getContext().getSession();
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess=sessionFactory.openSession();
		sess.beginTransaction();
		registration=(Registration)sess.createQuery("from Registration where RegistrationId="+session.get("RegistrationId")).list().get(0);
		sess.getTransaction().commit();
		HttpServletRequest request = ServletActionContext.getRequest();
		Double sha=(Double.valueOf(Math.random()*122));
		String url=request.getRequestURL().substring(0, request.getRequestURL().lastIndexOf("/"));
		registration.setEmailActivationKey(sha(""+sha));
		body=url +"/EmailActivation?key="+sha(""+sha);
		to =(String)session.get("EmailId");
		try {
			javax.mail.Session mailsess = javax.mail.Session.getDefaultInstance(
					properties, new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication(from, password);
						}
					});

			Message message = new MimeMessage(mailsess);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(body);
			Transport.send(message);
			sess=sessionFactory.openSession();
			sess.beginTransaction();
			sess.update(registration);
			sess.getTransaction().commit();
			session.put("resend", "Mail has been send, please check your mailbox for activation of your Email Address");
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
		return "success";
	}
	public static String sha(String input) {
		String sha = null;
		if (null == input)
			return null;
		try {
			MessageDigest digest = MessageDigest.getInstance("MD5");
			digest.update(input.getBytes(), 0, input.length());
			sha = new BigInteger(1, digest.digest()).toString(16);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return sha;
	}
}
