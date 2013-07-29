
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script type="text/javascript" src="/resources/js/lib/jquery-1.8.3.min.js"></script>
 <script type="text/javascript" src="/bootstrap-master/js/bootstrap-alert.js"></script>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

try{
		Class.forName("com.mysql.jdbc.Driver");
	   	
   		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/site","root", "");
   		Statement st=con.createStatement();
   	
   		String getemail=request.getParameter("email");
   		String getsifre=request.getParameter("sifre");
   		
   		String yazemail="SELECT * FROM uyeler where email='"+getemail+"'";
   

   		ResultSet sorgu=st.executeQuery(yazemail);
   
   		if(sorgu.next()){
   			
   	   	   String dbemail=sorgu.getString(4);
   	   	 
   	   	       if(dbemail.equals(getemail)){ 
                  %>
     		   
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
   	  
   	  					 <div class="alert fade in" style="width:450px;height:150px"><button class="close" data-dismiss="alert" >×</button>
   	  				<center>
   	      <h4 class="alert-heading">Bu e-mail başkası tarafından kullanılmaktadır. Başka bir e-mail giriniz.</h4><br>
     	  <p><a class="btn btn-danger" href="loginkayit.jsp">Tekrar Dene</a> 
     	  </p></center>   
 	   
   	   </div>
   	  </div>
   	  </div>	 
   	  </div>
   	  </div>

      
           <% }
   		
   	   	       
   		else {%>
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
	  
	  					 <div class="alert fade in" style="width:450px;height:150px"><button class="close" data-dismiss="alert" >×</button>
	  		<center>
	      <strong>boslukları doldur.</strong><br><br>
	   <p><a class="btn btn-danger" href="./ana.jsp">Tamam</a> </p></center>    	   
	   </div>
	  </div>
	  </div>	 
	  </div>
	  </div>
	 <% }   
   	   	    		
   		} 
   	   	       else {
	   	       		
      					String uye="insert into uyeler(ad,soyad,email,sifre) values('"+ad+"','"+soyad+"','"+getemail+"','"+getsifre+"')";
   	   	       			st.executeUpdate(uye);
   	   	       			%>
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
   	  
   	  					 <div class="alert fade in" style="width:450px;height:150px"><button class="close" data-dismiss="alert" >×</button>
   	  		<center>
   	      <strong>Başarılı bir şekilde üye oldunuz.</strong><br><br>
   	   <p><a class="btn btn-danger" href="./ana.jsp">Tamam</a> </p></center>    	   
   	   </div>
   	  </div>
   	  </div>	 
   	  </div>
   	  </div>
   	 
	 <% }  

        		   st.close();
        		   con.close();
          
}
catch(Exception e){
    System.out.println(e);

}
         %>
</body>
</html>
