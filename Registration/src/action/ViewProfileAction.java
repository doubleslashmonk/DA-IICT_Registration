package action;

import java.util.List;
import java.util.Map;

import model.Registration;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

public class ViewProfileAction {
	
	List<Registration> register;
	public String viewProfile(){
		Map session = ActionContext.getContext().getSession();
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess=sessionFactory.openSession();
		register=sess.createQuery("from Registration where RegistrationId="+session.get("RegistrationId")).list();
		ValueStack stack = ActionContext.getContext().getValueStack();
		Registration r=register.get(0);
		System.out.print(r.getRegistrationId());
		stack.push(r);
		return "success";
	}
}
