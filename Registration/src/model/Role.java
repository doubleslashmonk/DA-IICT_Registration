package model;

import javax.persistence.*;

@Entity
@Table(name="role")
public class Role {
	@Id
	private int RoleId;
	private String RoleName;
	
	public int getRoleId() {
		return RoleId;
	}
	public void setRoleId(int roleId) {
		RoleId = roleId;
	}
	public String getRoleName() {
		return RoleName;
	}
	public void setRoleName(String roleName) {
		RoleName = roleName;
	}
	
}
