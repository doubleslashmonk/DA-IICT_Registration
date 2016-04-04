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

import model.City;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;

public class CityAction extends ActionSupport implements ModelDriven{
	City city=new City();
	List<City> citylist;
	
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	public List<City> getCitylist() {
		return citylist;
	}
	public void setCitylist(List<City> citylist) {
		this.citylist = citylist;
	}
	public String addCity(){
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(city);
		session.getTransaction().commit();
		return "success";
	}
	public String viewCity(){
		Map session = ActionContext.getContext().getSession();
		if(session.containsKey("CityId"))
				session.remove("CityId");
		String role=(String)session.get("ActorRole");
		if(role==null || role=="")
			return LOGIN;
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess = sessionFactory.getCurrentSession();
		sess.beginTransaction();
		citylist=sess.createQuery("from City").list();
		return "success";
	}
	public String deleteCity(){
		HttpServletRequest request = ServletActionContext.getRequest();
		int cityId=Integer.parseInt(request.getParameter("CityId"));
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query = session.createQuery("delete from City where CityId="+cityId);
		query.executeUpdate();
		tx.commit();
		}catch(Exception e){
			
		}
		return "success";
	}
	public String editCity(){
		Map session = ActionContext.getContext().getSession();
		String role=(String)session.get("ActorRole");
		if(role==null || role=="")
			return LOGIN;
		HttpServletRequest request = ServletActionContext.getRequest();
		int cityId=Integer.parseInt(request.getParameter("CityId"));
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess = sessionFactory.getCurrentSession();
		Transaction tx=sess.beginTransaction();
		city=(City)sess.createQuery("from City where CityId="+cityId).list().get(0);
		tx.commit();
		ValueStack stack=ActionContext.getContext().getValueStack();
		stack.push(city);
		session.put("CityId", cityId);
		sess = sessionFactory.getCurrentSession();
		sess.beginTransaction();
		citylist=sess.createQuery("from City").list();
		return "success";
	}
	public String updateCity(){
		Map session = ActionContext.getContext().getSession();
		if(!session.containsKey("CityId")) return "input"; 
		int cityId=(int) session.get("CityId");
		city.setCityId(cityId);
		session.remove("CityId");
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess = sessionFactory.getCurrentSession();
		Transaction tx=sess.beginTransaction();
		sess.update(city);
		tx.commit();
		return "success";
	}
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return city;
	}
	

}
