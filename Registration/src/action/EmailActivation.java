package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.Registration;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionSupport;

public class EmailActivation extends ActionSupport {
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String key=request.getParameter("key");
		List<Registration> registration=new ArrayList<>();
		try {	
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			Session session = sessionFactory.openSession();
			registration=session.createQuery("from Registration where EmailActivationKey='"+key+"'").list();
			if(registration==null){
				return "error";
			}else{
			Transaction tx=session.beginTransaction();
			Registration r=registration.get(0);
			r.setIsEmailVerified(true);
			tx.commit();
			//String hql = "UPDATE registration set isemailverified = 'true' WHERE emailactivationkey ='"+key+"'";
			//Query query = session.createQuery(hql);
			//query.executeUpdate();
			return "success";
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
			return "error";
		}
	}
}