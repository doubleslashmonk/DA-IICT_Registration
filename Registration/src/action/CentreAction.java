package action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import model.Centre;
import model.City;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;

public class CentreAction extends ActionSupport implements ModelDriven{
	Centre centre=new Centre();
	List<Centre> centrelist;
	
	public List<Centre> getCentrelist() {
		return centrelist;
	}
	public void setCentrelist(List<Centre> centrelist) {
		this.centrelist = centrelist;
	}
	public Centre getCentre() {
		return centre;
	}
	public void setCentre(Centre centre) {
		this.centre = centre;
	}
	public String addCentre(){
		
		centre.setCentreRemainingCapacity(centre.getCentreCapacity());
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(centre);
		session.getTransaction().commit();
		return "success";
	}
	public String allCentre(){
		Map session = ActionContext.getContext().getSession();
		if(session.containsKey("CentreId"))
				session.remove("CentreId");
		String role=(String)session.get("ActorRole");
		if(role==null || role=="")
			return LOGIN;
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess = sessionFactory.getCurrentSession();
		sess.beginTransaction();
		centrelist=sess.createQuery("from Centre").list();
		return "success";
	}
	public String deleteCentre(){
		
		Map session = ActionContext.getContext().getSession();
		if(session.containsKey("CentreId")) session.remove("CentreId");
		String role=(String)session.get("ActorRole");
		if(role==null || role=="")
			return LOGIN;
		HttpServletRequest request = ServletActionContext.getRequest();
		int centreId=Integer.parseInt(request.getParameter("CentreId"));
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess = sessionFactory.getCurrentSession();
		Transaction tx=sess.beginTransaction();
		Query query = sess.createQuery("delete from Centre where CentreId="+centreId);
		query.executeUpdate();
		tx.commit();
		}catch(Exception e){
			
		}
		return "success";
	}
	public String viewCentre(){
		Map session = ActionContext.getContext().getSession();
		if(session.containsKey("CentreId")) session.remove("CentreId");
		String role=(String)session.get("ActorRole");
		if(role==null || role=="")
			return LOGIN;
		HttpServletRequest request = ServletActionContext.getRequest();
		int centreId=Integer.parseInt(request.getParameter("CentreId"));
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess = sessionFactory.getCurrentSession();
		Transaction tx=sess.beginTransaction();
		centre=(Centre) sess.createQuery("from Centre where CentreId="+centreId).list().get(0);
		tx.commit();
		ValueStack stack=ActionContext.getContext().getValueStack();
		stack.push(centre);	
		}catch(Exception e){
			return "error";
		}
		return "success";
	}
	public String editCentre(){
		Map session = ActionContext.getContext().getSession();
		String role=(String)session.get("ActorRole");
		if(role==null || role=="")
			return LOGIN;
		HttpServletRequest request = ServletActionContext.getRequest();
		int centreId=Integer.parseInt(request.getParameter("CentreId"));
		session.put("CentreId", centreId);
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess = sessionFactory.getCurrentSession();
		Transaction tx=sess.beginTransaction();
		centre=(Centre)sess.createQuery("from Centre where CentreId="+centreId).list().get(0);
		tx.commit();
		ValueStack stack=ActionContext.getContext().getValueStack();
		stack.push(centre);
		return "success";
		}catch(Exception e){
			return "error";
		}
	}
	public String updateCentre(){
		Map session = ActionContext.getContext().getSession();
		int centreId=(int) session.get("CentreId");
		centre.setCentreId(centreId);
		session.remove("CentreId");
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess = sessionFactory.openSession();
		sess.beginTransaction();
		Centre temp=(Centre)sess.createQuery("from Centre where CentreId="+centreId).list().get(0);
		sess.getTransaction().commit();
		sess=sessionFactory.openSession();
		sess.beginTransaction();
		centre.setCentreRemainingCapacity(temp.getCentreRemainingCapacity());
		sess.update(centre);
		sess.getTransaction().commit();
		return "success";
	}
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return centre;
	}
	
}
