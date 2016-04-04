package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Actor")
public class Actor {
	@Id
	private int ActorId;
	private String ActorFirstName;
	private String ActorMiddleName;
	private String ActorLastName;
	private long ActorPhoneNumber;
	private String ActorEmailAddress;
	private String ActorOfficeAddress;
	private int RoleId;
	private boolean IsVerified;
	private String ActorPassword;
	
	public long getActorPhoneNumber() {
		return ActorPhoneNumber;
	}
	public void setActorPhoneNumber(long actorPhoneNumber) {
		ActorPhoneNumber = actorPhoneNumber;
	}
	public String getActorFirstName() {
		return ActorFirstName;
	}
	public void setActorFirstName(String actorFirstName) {
		ActorFirstName = actorFirstName;
	}
	public String getActorMiddleName() {
		return ActorMiddleName;
	}
	public void setActorMiddleName(String actorMiddleName) {
		ActorMiddleName = actorMiddleName;
	}
	public String getActorLastName() {
		return ActorLastName;
	}
	public void setActorLastName(String actorLastName) {
		ActorLastName = actorLastName;
	}
	
	public String getActorEmailAddress() {
		return ActorEmailAddress;
	}
	public void setActorEmailAddress(String actorEmailAddress) {
		ActorEmailAddress = actorEmailAddress;
	}
	public String getActorOfficeAddress() {
		return ActorOfficeAddress;
	}
	public void setActorOfficeAddress(String actorOfficeAddress) {
		ActorOfficeAddress = actorOfficeAddress;
	}
	public int getRoleId() {
		return RoleId;
	}
	public void setRoleId(int roleId) {
		RoleId = roleId;
	}
	public boolean isIsVerified() {
		return IsVerified;
	}
	public void setIsVerified(boolean isVerified) {
		IsVerified = isVerified;
	}
	public String getActorPassword() {
		return ActorPassword;
	}
	public void setActorPassword(String actorPassword) {
		ActorPassword = actorPassword;
	}
	public int getActorId() {
		return ActorId;
	}
	public void setActorId(int actorId) {
		ActorId = actorId;
	}
	
}
