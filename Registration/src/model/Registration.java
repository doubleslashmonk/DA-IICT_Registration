package model;

import javax.persistence.*;

import org.hibernate.annotations.CollectionId;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Type;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Set;
@Entity
@Table(name="Registration")
@SequenceGenerator(name="seq",allocationSize=1,initialValue=2)
public class Registration {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq")
	private long RegistrationId;
	@Transient
	private int DOBDate;
	@Transient
	private int DOBMonth;
	@Transient
	private int DOBYear;
	@Transient
	private int DDDate;
	@Transient
	private int DDMonth;
	@Transient
	private int DDYear;
	private String  StudentName;
	private String StudentGuardianName;
	private boolean StudentGender=true;
	private Date StudentDOB;
	private String ContactPersonName;
	private String StudentAddressLine1;
	private String StudentAddressLine2;
	private String StudentCity;
	private String StudentState;
	private int StudentPostalCode;
	private int STDCode;
	private long PhoneNumber;
	private long MobileNumber;
	private String StudentEmailAddress;
	private int CityPreference1;
	private int CityPreference2;
	private int CityPreference3;
	private int DemandDraftNumber;
	private Date DemandDraftDate;
	private String BankBranch;
	private String BankName;
	private boolean IsApproved;
	private String Photo;
	private boolean IsEmailVerified;
	private String EmailActivationKey;
	@Transient
	private Degree degree;
	@Transient
	private Degree degree1;
	@Transient
	private Degree degree2;
	@Transient
	private Exam exam1;
	@Transient
	private Exam exam2;
	
	public Exam getExam1() {
		return exam1;
	}
	public void setExam1(Exam exam1) {
		this.exam1 = exam1;
	}
	public Exam getExam2() {
		return exam2;
	}
	public void setExam2(Exam exam2) {
		this.exam2 = exam2;
	}
	public Degree getDegree1() {
		return degree1;
	}
	public void setDegree1(Degree degree1) {
		this.degree1 = degree1;
	}
	public Degree getDegree2() {
		return degree2;
	}
	public void setDegree2(Degree degree2) {
		this.degree2 = degree2;
	}
	public Degree getDegree() {
		return degree;
	}
	public void setDegree(Degree degree) {
		this.degree = degree;
	}
	public boolean isIsEmailVerified() {
		return IsEmailVerified;
	}
	public void setIsEmailVerified(boolean isEmailVerified) {
		IsEmailVerified = isEmailVerified;
	}
	public String getEmailActivationKey() {
		return EmailActivationKey;
	}
	public void setEmailActivationKey(String emailActivationKey) {
		EmailActivationKey = emailActivationKey;
	}
	public Date getStudentDOB() {
		return StudentDOB;
	}
	public void setStudentDOB() {
		StudentDOB = new Date(DOBYear-1900,DOBMonth-1,DOBDate);
	}
	public Date getDemandDraftDate() {
		return DemandDraftDate;
	}
	public void setDemandDraftDate() {
		DemandDraftDate = new Date(DDYear-1900,DDMonth-1,DDDate);
	}
	
	public long getRegistrationId() {
		return RegistrationId;
	}
	public void setRegistrationId(long registrationId) {
		RegistrationId = registrationId;
	}
	public String getStudentName() {
		return StudentName;
	}
	public void setStudentName(String studentName) {
		StudentName = studentName;
	}	
	public String getStudentGuardianName() {
		return StudentGuardianName;
	}
	public void setStudentGuardianName(String studentGuardianName) {
		StudentGuardianName = studentGuardianName;
	}
	public boolean getStudentGender() {
		return StudentGender;
	}
	public void setStudentGender(boolean studentGender) {
		StudentGender = studentGender;
	}
	public String getContactPersonName() {
		return ContactPersonName;
	}
	public void setContactPersonName(String contactPersonName) {
		ContactPersonName = contactPersonName;
	}
	public String getStudentAddressLine1() {
		return StudentAddressLine1;
	}
	public void setStudentAddressLine1(String studentAddressLine1) {
		StudentAddressLine1 = studentAddressLine1;
	}
	public String getStudentAddressLine2() {
		return StudentAddressLine2;
	}
	public void setStudentAddressLine2(String studentAddressLine2) {
		StudentAddressLine2 = studentAddressLine2;
	}
	public String getStudentCity() {
		return StudentCity;
	}
	public void setStudentCity(String studentCity) {
		StudentCity = studentCity;
	}
	public String getStudentState() {
		return StudentState;
	}
	public void setStudentState(String studentState) {
		StudentState = studentState;
	}
	public int getStudentPostalCode() {
		return StudentPostalCode;
	}
	public void setStudentPostalCode(int studentPostalCode) {
		StudentPostalCode = studentPostalCode;
	}
	public int getSTDCode() {
		return STDCode;
	}
	public void setSTDCode(int sTDCode) {
		STDCode = sTDCode;
	}
	public long getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(long phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public long getMobileNumber() {
		return MobileNumber;
	}
	public void setMobileNumber(long mobileNumber) {
		MobileNumber = mobileNumber;
	}
	public String getStudentEmailAddress() {
		return StudentEmailAddress;
	}
	public void setStudentEmailAddress(String studentEmailAddress) {
		StudentEmailAddress = studentEmailAddress;
	}
	public int getCityPreference1() {
		return CityPreference1;
	}
	public void setCityPreference1(int cityPreference1) {
		CityPreference1 = cityPreference1;
	}
	public int getCityPreference2() {
		return CityPreference2;
	}
	public void setCityPreference2(int cityPreference2) {
		CityPreference2 = cityPreference2;
	}
	public int getCityPreference3() {
		return CityPreference3;
	}
	public void setCityPreference3(int cityPreference3) {
		CityPreference3 = cityPreference3;
	}
	public int getDemandDraftNumber() {
		return DemandDraftNumber;
	}
	public void setDemandDraftNumber(int demandDraftNumber) {
		DemandDraftNumber = demandDraftNumber;
	}
	public String getBankBranch() {
		return BankBranch;
	}
	public void setBankBranch(String bankBranch) {
		BankBranch = bankBranch;
	}
	public String getBankName() {
		return BankName;
	}
	public void setBankName(String bankName) {
		BankName = bankName;
	}

	public boolean getIsApproved() {
		return IsApproved;
	}
	public void setIsApproved(boolean isApproved) {
		IsApproved = isApproved;
	}
	public String getPhoto() {
		return Photo;
	}
	public void setPhoto(String photo) {
		this.Photo = photo;
	}
	public int getDOBDate() {
		return DOBDate;
	}
	public void setDOBDate(int dOBDate) {
		DOBDate = dOBDate;
	}
	public int getDOBMonth() {
		return DOBMonth;
	}
	public void setDOBMonth(int dOBMonth) {
		DOBMonth = dOBMonth;
	}
	public int getDOBYear() {
		return DOBYear;
	}
	public void setDOBYear(int dOBYear) {
		DOBYear = dOBYear;
	}
	public int getDDDate() {
		return DDDate;
	}
	public void setDDDate(int dDDate) {
		DDDate = dDDate;
	}
	public int getDDMonth() {
		return DDMonth;
	}
	public void setDDMonth(int dDMonth) {
		DDMonth = dDMonth;
	}
	public int getDDYear() {
		return DDYear;
	}
	public void setDDYear(int dDYear) {
		DDYear = dDYear;
	}
	
}
