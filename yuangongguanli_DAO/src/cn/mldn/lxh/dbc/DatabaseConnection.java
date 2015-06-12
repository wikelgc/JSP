package cn.mldn.lxh.dbc;
import java.sql.*;
public class DatabaseConnection {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
	public static final String DBURL = "jdbc:mysql://localhost:3306/mldn" ;
	public static final String DBUSER = "root" ;
	public static final String DBPASS = "root" ;
	private Connection conn=null;
	public DatabaseConnection() throws Exception{
		try{   Class.forName(DBDRIVER);
		       this.conn=DriverManager.getConnection(DBURL,DBUSER,DBPASS);
		       System.out.println(this.conn);
		}catch(Exception e){
			throw e;
		}
	}
	public Connection getConnection() {
		return this.conn;
	}
	public void close() throws Exception{
		if(this.conn!=null){
			try{
				this.conn.close();
			}catch(Exception e){
				throw e;
			}
		}
			
	}
	

}


