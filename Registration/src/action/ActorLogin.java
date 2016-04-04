package action;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import model.Actor;
import model.Registration;
import model.Role;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;

public class ActorLogin extends ActionSupport implements ModelDriven{
	Actor actor=new Actor();
	List<Registration> registration;
	
	public List<Registration> getRegistration() {
		return registration;
	}

	public void setRegistration(List<Registration> registration) {
		this.registration = registration;
	}

	public String login(){
		List<Actor> actorlist;
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess=sessionFactory.openSession();
		actorlist=sess.createQuery("from Actor where ActorEmailAddress='"+actor.getActorEmailAddress()+"'").list();		
		if(!actorlist.isEmpty()){
			Actor temp=actorlist.get(0);
			if(temp.getActorEmailAddress().equals(actor.getActorEmailAddress()) && temp.getActorPassword().equals(actor.getActorPassword())){
				sess=sessionFactory.openSession();
				List<Role> rolelist=sess.createQuery("from Role where RoleId="+temp.getRoleId()).list();
				Map session = ActionContext.getContext().getSession();
				session.put("ActorRole", rolelist.get(0).getRoleName());
				session.put("ActorName",temp.getActorFirstName()+" "+temp.getActorLastName());
				session.put("ActorEmailAddress",temp.getActorEmailAddress());
				
				return rolelist.get(0).getRoleName();
			}else{
				addFieldError("ActorEmailAddress", "Email Address or Password is wrong");
				return "input";
			}
		}else{
			addFieldError("ActorEmailAddress", "Email Address or Password is wrong");
			return "input";
		}
		
	}

	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return actor;
	}
	public String logout(){
		Map session = ActionContext.getContext().getSession();
		session.remove("ActorName");
		session.remove("ActorRole");
		session.remove("ActorEmailAddress");
		return "success";
	}
	public String checkRole(){
		Map session = ActionContext.getContext().getSession();
		if(session.containsKey("ActorRole")){
			if(session.get("ActorRole").toString().equals("coordinator")){
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session sess=sessionFactory.openSession();
				registration=sess.createQuery("from Registration order by RegistrationId").list();
				
				ValueStack stack=ActionContext.getContext().getValueStack();
				stack.push(registration);
			}
			return session.get("ActorRole").toString();
		}
		else return LOGIN;
	}
}
