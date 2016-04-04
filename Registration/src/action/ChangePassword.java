package action;

import java.util.List;
import java.util.Map;

import model.Actor;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ChangePassword extends ActionSupport implements ModelDriven{
	Actor actor=new Actor();
	private String ActorNewPassword;
	private String ActorConfirmPassword;
	
	public String getActorNewPassword() {
		return ActorNewPassword;
	}

	public void setActorNewPassword(String actorNewPassword) {
		ActorNewPassword = actorNewPassword;
	}

	public String getActorConfirmPassword() {
		return ActorConfirmPassword;
	}

	public void setActorConfirmPassword(String actorConfirmPassword) {
		ActorConfirmPassword = actorConfirmPassword;
	}

	public String changepassword(){
		List<Actor> actorlist;
		Map session = ActionContext.getContext().getSession();
		String email=(String)session.get("ActorEmailAddress");
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session sess=sessionFactory.openSession();
		actorlist=sess.createQuery("from Actor where ActorEmailAddress='"+email+"'").list();
		if(!actorlist.isEmpty()){
			Actor temp=actorlist.get(0);
			if(temp.getActorPassword().equals(actor.getActorPassword())){
				if(getActorNewPassword().equals(getActorConfirmPassword())){
					Transaction tx=sess.beginTransaction();
					temp.setActorPassword(getActorNewPassword());
					tx.commit();
					session.put("changepass", "Your password has successfully changed");
					return "success";
				}else{
					addFieldError("ActorNewPassword", "New Password and Confirm Password doesn't Match");
					return "input";
				}
			}else{
				addFieldError("ActorPassword", "Password is wrong");
				return "input";
			}
		}else{
			addFieldError("ActorEmailAddress", "Password is wrong");
			return "input";
		}
		
	}

	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return actor;
	}
}

