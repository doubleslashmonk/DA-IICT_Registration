package action;



import model.Role;

import com.opensymphony.xwork2.ModelDriven;

public class RoleAction implements ModelDriven{
	Role role=new Role();
	public String execute(){
		return "success";
	}

	@Override
	public Object getModel() {
		return role;
	}
	
}
