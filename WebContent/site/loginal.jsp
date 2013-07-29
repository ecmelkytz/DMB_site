<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
 <script type="text/javascript" src="/resources/js/lib/jquery-1.8.3.min.js"></script>
 <script type="text/javascript" src="/bootstrap-master/js/bootstrap-alert.js"></script>     
  <link href="bootstrap-master/docs/assets/css/bootstrap.css" rel="stylesheet">
  	 <link href="bootstrap-master/docs/assets/css/bootstrap-responsive.css" rel="stylesheet"> 
</head>
<body style="background-color:#eeeeee">
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Connection.*"%>
<%@page import="com.mysql.jdbc.Statement.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane" %>
<%@page import="java.util.*" %>

<%

String ad=request.getParameter("ad");

String soyad=request.getParameter("soyad");
String email=request.getParameter("email");
String sifre=request.getParameter("sifre");
try{
	  Class.forName("com.mysql.jdbc.Driver");
	   String uye="insert into uyeler(ad,soyad,email,sifre) values('"+ad+"','"+soyad+"','"+email+"','"+sifre+"')";
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost/site","root", "");
      Statement st=con.createStatement();
      String getemail=request.getParameter("email");
      String getsifre=request.getParameter("sifre");
      String yazemail="SELECT * FROM uyeler where email='"+getemail+"'";
      
   
      ResultSet sorgu=st.executeQuery(yazemail);
      
      if(sorgu.next()){
   	   String dbemail=sorgu.getString(4);
   	   
   	   String dbsifre=sorgu.getString(5);
   	   
   	   if(dbemail.equals(getemail) && dbsifre.equals(getsifre)){
   		   session.setAttribute("id",sorgu.getString(1));   		  
   		   session.setAttribute("ad",sorgu.getString(2));
   		   session.setAttribute("soyad",sorgu.getString(3));
   		   session.setAttribute("email",sorgu.getString(4));
   		   session.setAttribute("sifre",sorgu.getString(5));
   		   request.getRequestDispatcher("./ana.jsp").include(request,response);
   	%>	
   	
   	 
   	 
   		   
   	   <% }
   	   
   	   else{%>
   	    <jsp:include page="./navbar.jsp"></jsp:include>
    
    	<center>   	
     	<table ><tr>
      	<td><img src="resim/anasayfa/yenilogo.png" ></td>
      	</tr>
      	</table></center>  
   		<div class="container" style="width:700px;">
        
     	  <div class="hero-unit" style="background-color: #CAC8C8">
     	 
     	     <div class="row">
     	    
     	  <div class="span10" style="margin-left:50px">
     	
     	  <div class="alert alert-block alert-error fade in" style="width:500px;height:150px;"><button class="close" data-dismiss="alert">×</button>
     	 <center>
     	  <h4 class="alert-heading">Email ya da parolanız yanlış!</h4><br>
     	  <p><a class="btn btn-danger" href="Login.jsp">Tekrar Dene</a> 
     	  <a class="btn" href="loginkayit.jsp">Üye olmak için</a></p>
     	 </center>
     	  </div>
     	
     	  </div>
     	 
     	  </div>
     	  </div>
     	  </div>
     		   

   	  <% }
      }  
   	else{%>
   		<jsp:include page="./navbar.jsp"></jsp:include>
   		<center>   	
     	<table ><tr>
      	<td><img src="resim/anasayfa/yenilogo.png" ></td>
      	</tr>
      	</table></center>  
   	    
   		<div class="container" style="width:700px;">
        
     	  <div class="hero-unit" style="background-color: #CAC8C8">
     	 
     	     <div class="row">
     	    
     	  <div class="span10" style="margin-left:50px">
     	
     	  <div class="alert alert-block alert-error fade in" style="width:500px;height:150px;"><button class="close" data-dismiss="alert">×</button>
     	 <center>
     	  <h4 class="alert-heading">Böyle bir kayıt bulunmamaktadır.</h4><br>
     	  <p><a class="btn btn-danger" href="Login.jsp">Tekrar Dene</a> 
     	  <a class="btn" href="Loginkayit.html">Üye olmak için</a></p>
     	 </center>
     	  </div>
     	
     	  </div>
     	 
     	  </div>
     	  </div>
     	  </div>
   		
   	 <%   }
      st.close();
      con.close();
           
           
}
catch(Exception e){
    System.out.println(e);

}
         %>
</body>
</html>