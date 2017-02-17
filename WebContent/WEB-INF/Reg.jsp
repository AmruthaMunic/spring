<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
</style>
<script src="C:\Users\amrutha\Desktop\babtra works\jquery\jquery-3.1.1.min.js"></script>
<script>
$(document).ready(function()
{
	
	$("#Reg").click(function(){
		
		var firstname=$("#Fname").val();
		if(username=="")
		{
			$("#usererror").text("please enter name");
			//alert("enter name");
		}
		else if(!isNaN(firstname))
		{
			$("#usererror").text("Name must be characters"); 
		}
		else
		{
			$("#usererror").text("");
		}
	   var lname=$("#Lname").val();
	   if(lname=="")
	   {
		   $("#usererror1").text("feild can't be empty");
	   }
	  else if(!isNaN(lname))
		{
			$("#usererror1").text("Name must be characters"); 
		}
		else
		{
			$("#usererror1").text("");
		}
		var mobile=$("#MobileNo").val();
	   if(mobile=="")
	   {
		   $("#l1").text("feild can't be empty");
	   }
	  else if(isNaN(mobile))
		{
			$("#l1").text("only numbers allowed "); 
		}
		else if((mob.length<10)||(mob.length>10))
		{
			
			$("#l1").text("must contain 10 digits");
		}
		else
		{
			$("#l1").text("");
		}
		var mailid=$("#Email").val();
		var pat=/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		  var matchArray = mailid.match(pat);
		if(mailid=="")
		{
			$("#l2").text("please enter mailid");
			//alert("enter name");
		}
		else if(matchArray ==null)
		{ 
		//alert("i");
			$("#l2").text("incorrect format"); 
		}
		else
		{
			$("#l2").text("");
		}
		var password=$("#Password").val();
		if(password=="")
		{
			$("#l3").text("please enter password");
			//alert("enter name");
		}
		else if(password.length<8)
		{ 
		//alert("i");
			$("#l3").text("must contain 8 and more characters"); 
		}
		else
		{
			$("#l3").text("");
		}
		var gender=$("#male").val();
		if($("#gender:checked").length==0)
		{
			$("#l5").text("please select gender");
			//alert("enter name");
		}
		else
		{
			$("#l5").text("");
		}
				
   });
});
</script>
</head>
<body>
<form:form action="RegisterSuccess" method="POST" enctype="multipart/form-data" >
<table align="center">
<tr><td>FirstName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="FName" name="firstname" placeholder="First Name" style="height:20px ;width:220px">
<label id="usererror"></label></td></tr>
<tr><td>LastName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="LName" name="lastname" placeholder="Last Name"style="height:20px ;width:220px">
<label id="usererror1"></label></td></tr>
<tr><td>MobileNumber:<input type="text" id="mobileno" name="mobileno" placeholder="Mobile number"style="height:20px ;width:220px">
<label id="l1"></label></td></tr>
 <tr><td>Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Female<input type="radio" name="gender" id="male">
Male<input type="radio" id="male" name="gender"><label id="l5"></label></td></tr>
<tr><td>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" id="Email" name="email" placeholder="Email"style="height:20px ;width:220px"><label id="l2"></label></td></tr>
<tr><td>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="password"id="Password" name="password" placeholder="Password"style="height:20px ;width:220px"><label id="l3"></label></td></tr>
<tr><td><div class="upload">Select File:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="file" name="file"/> </br> 
 
</div></td></tr> 
<tr><td><input type="submit"  value="REGISTER" style="background-color:green; width: 330px;height:30px"></td></tr>
</table>
</form:form>
</body>
</html>