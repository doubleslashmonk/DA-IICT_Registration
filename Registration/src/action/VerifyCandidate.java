package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import model.Registration;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;

public class VerifyCandidate extends ActionSupport implements ModelDriven{
	Registration registration=new Registration();
	
	public Registration getRegistration() {
		return registration;
	}
	public void setRegistration(Registration registration) {
		this.registration = registration;
	}
	public String getCandateDetail(){
		HttpServletRequest request = ServletActionContext.getRequest();
		long rid=Long.parseLong( request.getAttribute("RegistrationId").toString());
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess = sessionFactory.getCurrentSession();
		sess.beginTransaction();
		registration=(Registration)sess.createQuery("from Registration where RegistrationId="+rid).list().get(0);
		ValueStack stack=ActionContext.getContext().getValueStack();
		stack.push(registration);
		}catch(Exception e){
			return "error";
		}
		return "success";
	}
	public String demandApprove(){
		HttpServletRequest request = ServletActionContext.getRequest();
		long rid=Long.parseLong( request.getAttribute("RegistrationId").toString());
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess = sessionFactory.getCurrentSession();
		sess.beginTransaction();
		registration=(Registration)sess.createQuery("from Registration where RegistrationId="+rid).list().get(0);
		sess.getTransaction().commit();
		sess=sessionFactory.openSession();
		sess.beginTransaction();
		registration.setIsApproved(true);
		sess.update(registration);
		sess.getTransaction().commit();
		return "success";
		}catch(Exception e){
			return "error";
		}
	}
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return registration;
	}
	

}
