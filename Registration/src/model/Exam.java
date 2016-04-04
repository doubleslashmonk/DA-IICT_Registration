package model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Exam")
public class Exam implements Serializable{
	@Id
	private long RegistrationId;
	@Id
	private int ExamId;
	private String ExamName;
	private int MaxMarks;
	private float ObtainedMarks;
	
	
	public long getRegistrationId() {
		return RegistrationId;
	}
	public void setRegistrationId(long registrationId) {
		RegistrationId = registrationId;
	}
	public int getExamId() {
		return ExamId;
	}
	public void setExamId(int examId) {
		ExamId = examId;
	}
	public String getExamName() {
		return ExamName;
	}
	public void setExamName(String examName) {
		ExamName = examName;
	}
	public int getMaxMarks() {
		return MaxMarks;
	}
	public void setMaxMarks(int maxMarks) {
		MaxMarks = maxMarks;
	}
	public float getObtainedMarks() {
		return ObtainedMarks;
	}
	public void setObtainedMarks(float obtainedMarks) {
		ObtainedMarks = obtainedMarks;
	}
}
