<%@page contentType="text/html; charset=utf-8"%>
<html>		
<head>	
	<title>JavaScript应用正则表达式</title>
	<p>雇员信息登入表</p>
	<script>		
		function validate(f){	// 定义函数，此时f就表示myform
			var value = true;	// 取得输入的内容
			if(!/^\d+$/.test(f.userID.value)){	// 用户编码 --数字
				alert("userID输入格式不正确！") ;	
				f.userID.focus() ; 	// 让焦点定位到email框
				f.userID.select() ;	// 选择全部内容
				value = false;		// 返回false，表单不提交
			}
			if(!/^\w+$/.test(f.username.value)){	// 用户姓名 --非空
				alert("username输入格式不正确！") ;	
				f.username.focus() ; 	// 让焦点定位到email框
				f.username.select() ;	// 选择全部内容
				value = false;		// 返回false，表单不提交
			}
			if(!/^\w+$/.test(f.userwork.value)){	// 用户工作   -- 非空
				alert("userwork输入格式不正确！") ;	
				f.userwork.focus() ; 	// 让焦点定位到email框
				f.userwork.select() ;	// 选择全部内容
				value = false;		// 返回false，表单不提交
			}
			if(!/^[1-2][0-9][0-9]-[0-1][0-9]-[0-3][0-9]$/.test(f.userdata.value)){	// 用户日期  --日期格式
				alert("userdata输入格式不正确！") ;	
				f.userdata.focus() ; 	// 让焦点定位到email框
				f.userdata.select() ;	// 选择全部内容
				value = false;		// 返回false，表单不提交
			}
			if(!/^\d+{3-6}$/.test(f.salary.value)){	// 用户工资 --100-100000
				alert("salary输入格式不正确！") ;	
				f.salary.focus() ; 	// 让焦点定位到email框
				f.salary.select() ;	// 选择全部内容
				value = false;		// 返回false，表单不提交
			}
			if(!/^\d+{2,4} $/.test(f.bonus.value)){	// 用户奖金  --必须是数字
				alert("bonus输入格式不正确！") ;	
				f.bonus.focus() ; 	// 让焦点定位到email框
				f.bonus.select() ;	// 选择全部内容
				value = false;		// 返回false，表单不提交
			}
			return value;		// 返回true，表单提交
		}
	</script>
</head>	

<body>					
	<form action="index.jsp" method="post" name="myform" onSubmit="return validate(this)">
		雇员编号:<input type = "text" name = "userID"><br>
		雇员姓名:<input type = "text" name = "username"><br>
		雇员工作:<input id="myCar" list="cars" name = "userwork"/>
              <datalist id="cars">
	               <option value="宣传部">
	               <option value="销售部">
	               <option value="技术部">
              </datalist><br>
		雇员日期:<input type = "text" name = "userdata"><br>
		雇员工资:<input type = "text" name = "salary"><br>
		雇员奖金:<input type = "text" name = "bonus"><br>
		<input type="submit" value="提交">
		<input type="reset" value="重置">
	</form>					
</body>					
</html>