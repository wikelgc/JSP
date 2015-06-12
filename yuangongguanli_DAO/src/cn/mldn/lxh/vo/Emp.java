package cn.mldn.lxh.vo;
import java.util.Date;
public class Emp {
	private String empno;
	private String ename;
	private String job;
	private Date hiredate;
	private float sal;
	
	//构造方法
	public Emp(String empno,String ename,String job,Date hiredate,float sal){
		setEmpno(empno);
		setEname(ename);
		setHiredate(hiredate);
		setJob(job);
		setSal(sal);	
	}
	public Emp(){
		
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	public float getSal() {
		return sal;
	}
	public void setSal(float sal) {
		this.sal = sal;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}

}

