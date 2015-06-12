package cn.mldn.lxh.dao.impl;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import cn.mldn.lxh.dao.IEmpDAO;
import cn.mldn.lxh.vo.Emp;
import cn.mldn.lxh.dbc.*;
public class EmpDAOImpl implements IEmpDAO {
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private DatabaseConnection dbc=null;
	
	
public boolean doCreate(Emp emp) throws Exception{
	boolean flag=false;
	String sql="INSERT INTO emp(empno,ename,job,hiredate,sal)VALUES(?,?,?,?,?)";
   this.dbc=new DatabaseConnection();
   this.conn=this.dbc.getConnection();
   this.pstmt=this.conn.prepareStatement(sql);
   this.pstmt.setString(1, emp.getEmpno());
   this.pstmt.setString(2, emp.getEname());
   this.pstmt.setString(3, emp.getJob());
   this.pstmt.setDate(4, new java.sql.Date(emp.getHiredate().getTime()));
   this.pstmt.setFloat(5, emp.getSal());
   if(this.pstmt.executeUpdate()>0){
	   flag=true;
   }
   this.pstmt.close();
   this.dbc.close();
   
	return flag;
}



public List<Emp> findAll(String keyWord) throws Exception{
	List<Emp> all=new ArrayList<Emp>();
	String sql="SELECT empno,ename,job,hiredate,sal FROM emp WHERE ename LIKE ? OR job LIKE ?";
	 this.dbc=new DatabaseConnection();
	   this.conn=this.dbc.getConnection();
	   this.pstmt=this.conn.prepareStatement(sql);
	   this.pstmt.setString(1, "%"+keyWord+"%");
	   this.pstmt.setString(2, "%"+keyWord+"%"); 
	   ResultSet rs=this.pstmt.executeQuery();
	   Emp emp=null;
	   while(rs.next()){
		   emp=new Emp(rs.getString(1),rs.getString(2),rs.getString(3),rs.getDate(4),rs.getFloat(5));
		   all.add(emp);
		   
	   }
	
	   this.pstmt.close();
	   this.dbc.close();			
	return all;
}



@Override
public Emp findById(String empno) throws Exception {
	String sql="SELECT empno,ename,job,hiredate,sal FROM emp WHERE empno = '"+empno+"'";
	 this.dbc=new DatabaseConnection();
	   this.conn=this.dbc.getConnection();
	   this.pstmt=this.conn.prepareStatement(sql);
	   ResultSet rs=this.pstmt.executeQuery();
	   Emp emp=null;
	   rs.next();
	   emp=new Emp(rs.getString(1),rs.getString(2),rs.getString(3),rs.getDate(4),rs.getFloat(5));
		   
	
	   this.pstmt.close();
	   this.dbc.close();			
	return emp;
}



@Override
public boolean doUpdate(Emp emp) throws Exception {
	boolean flag=false;
	System.out.println(emp.getEmpno());
	System.out.println(emp.getEname());
	System.out.println(emp.getJob());
	System.out.println(emp.getHiredate());
	System.out.println(emp.getSal());
	String sql="update emp set empno = ?,ename = ? , job = ? ,hiredate = ? ,sal = ? where empno = ?";
   this.dbc=new DatabaseConnection();
   this.conn=this.dbc.getConnection();
   this.pstmt=this.conn.prepareStatement(sql);
   
   
   this.pstmt.setString(1, emp.getEmpno());
   
   
   this.pstmt.setString(2, emp.getEname());
   
   
   this.pstmt.setString(3, emp.getJob());
   
 
   this.pstmt.setDate(4, new java.sql.Date(emp.getHiredate().getTime()));
   
   
   this.pstmt.setFloat(5, emp.getSal());
   
   this.pstmt.setString(6, emp.getEmpno());
   
   if(this.pstmt.executeUpdate()>0){
	   flag=true;
   }
   this.pstmt.close();
   this.dbc.close();
   
	return flag;
}



@Override
public boolean doRemove(String empno) throws Exception {
	List<Emp> all=new ArrayList<Emp>();
	String sql="delete FROM emp WHERE empno = "+empno+"";
	 this.dbc=new DatabaseConnection();
	   this.conn=this.dbc.getConnection();
	   this.pstmt=this.conn.prepareStatement(sql);
	   int  rs=this.pstmt.executeUpdate();
  
	   if(rs > 0){
		   return true;
	   }
	   else {
		return false;
	}
}




}