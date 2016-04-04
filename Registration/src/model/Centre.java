package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
@Entity
@Table(name="Centre")
@SequenceGenerator(name = "sequence", sequenceName = "centre_id_seq" ,initialValue=1,allocationSize=1)
public class Centre {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")
	private int CentreId;
	private String CentreName;
	private String AddressLine1;
	private String AddressLine2;
	private String CentrePostalCode;
	private int CentreCapacity;
	private long CentreContactNumber;
	private int CentreRemainingCapacity;
	public int getCentreRemainingCapacity() {
		return CentreRemainingCapacity;
	}
	public void setCentreRemainingCapacity(int centreRemainingCapacity) {
		CentreRemainingCapacity = centreRemainingCapacity;
	}
	public int getCentreId() {
		return CentreId;
	}
	public void setCentreId(int centreId) {
		CentreId = centreId;
	}
	public String getCentreName() {
		return CentreName;
	}
	public void setCentreName(String centreName) {
		CentreName = centreName;
	}
	public String getAddressLine1() {
		return AddressLine1;
	}
	public void setAddressLine1(String addressLine1) {
		AddressLine1 = addressLine1;
	}
	public String getAddressLine2() {
		return AddressLine2;
	}
	public void setAddressLine2(String addressLine2) {
		AddressLine2 = addressLine2;
	}
	public String getCentrePostalCode() {
		return CentrePostalCode;
	}
	public void setCentrePostalCode(String centrePostalCode) {
		CentrePostalCode = centrePostalCode;
	}
	
	public int getCentreCapacity() {
		return CentreCapacity;
	}
	public void setCentreCapacity(int centreCapacity) {
		CentreCapacity = centreCapacity;
	}
	public long getCentreContactNumber() {
		return CentreContactNumber;
	}
	public void setCentreContactNumber(long centreContactNumber) {
		CentreContactNumber = centreContactNumber;
	}
	
}
