package model;

import java.io.Serializable;

import javax.persistence.*;
@Entity
@Table(name="Degree")
public class Degree implements Serializable{
	@Id
	private long RegistrationId;
	@Id
	private long DegreeId;
	private String DegreeName;
	private String Discipline;
	private String University;
	private int DegreeMonth;
	private int DegreeYear;
	private double ObtainedPercentage;
	private int MaxGPA;
	private double ObtainedGPA;
	private boolean DegreeType;
	
	public long getRegistrationId() {
		return RegistrationId;
	}
	public void setRegistrationId(long registrationId) {
		RegistrationId = registrationId;
	}
	public long getDegreeId() {
		return DegreeId;
	}
	public void setDegreeId(long degreeId) {
		DegreeId = degreeId;
	}
	public String getDiscipline() {
		return Discipline;
	}
	public void setDiscipline(String discipline) {
		Discipline = discipline;
	}
	public String getDegreeName() {
		return DegreeName;
	}
	public void setDegreeName(String degreeName) {
		DegreeName = degreeName;
	}
	public String getUniversity() {
		return University;
	}
	public void setUniversity(String university) {
		University = university;
	}
	public int getDegreeMonth() {
		return DegreeMonth;
	}
	public void setDegreeMonth(int degreeMonth) {
		DegreeMonth = degreeMonth;
	}
	public int getDegreeYear() {
		return DegreeYear;
	}
	public void setDegreeYear(int degreeYear) {
		DegreeYear = degreeYear;
	}
	public double getObtainedPercentage() {
		return ObtainedPercentage;
	}
	public void setObtainedPercentage(double obtainedPercentage) {
		ObtainedPercentage = obtainedPercentage;
	}
	public int getMaxGPA() {
		return MaxGPA;
	}
	public void setMaxGPA(int maxGPA) {
		MaxGPA = maxGPA;
	}
	public double getObtainedGPA() {
		return ObtainedGPA;
	}
	public void setObtainedGPA(double obtainedGPA) {
		ObtainedGPA = obtainedGPA;
	}
	public boolean isDegreeType() {
		return DegreeType;
	}
	public void setDegreeType(boolean degreeType) {
		DegreeType = degreeType;
	}	
}
