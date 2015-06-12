package cn.mldn.lxh.dao;
import java.sql.ResultSet;
import java.util.List;

import cn.mldn.lxh.vo.Emp;
public interface IEmpDAO {
	  public  boolean doCreate(Emp emp) throws Exception;
	  public Emp findById(String empno) throws Exception;
	  public boolean doUpdate(Emp vo) throws Exception;
      public List<Emp> findAll(String keyWord) throws Exception;
      public  boolean doRemove(String id) throws Exception;
}