<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="bootstrap-master/docs/assets/css/bootstrap.css" rel="stylesheet">
	 <link href="bootstrap-master/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">  
    <link href="css/footer.css" rel="stylesheet">
     <script type="text/javascript" src="/bootstrap-master/js/bootstrap-alert.js"></script>   
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
   </style>   
<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="./ana.jsp">DMB</a>
          <div class="nav-collapse collapse">
          <ul class="nav pull-right">

                      <li class="dropdown" >
            		 <% 
            			   	session = request.getSession();
            				if (session.getAttribute("email") != null ){
            				%>
            					
            					<a>Hoşgeldin <%= session.getAttribute("ad") %> <%= session.getAttribute("soyad") %> </a>
            					
            					<li><a href="logout.jsp">Çıkış</a></li>
            				<% }
            				else { %>
            					<a class="dropdown-toggle" href="#" data-toggle="dropdown""> Giriş Yap <strong class="caret"></strong></a>
            					<div class="dropdown-menu" style="padding: 20px; padding-bottom: -30px;" >
								<form  action="loginal.jsp"  >


								E-mail :
								<input type="email" name="email" value="">
								<br>
								Parola :
								<input type="password" name="sifre" value=""><br>
								<input type="submit" name="Submit" value="Giriş" class = "btn btn-primary" style = "width:2in;position: relative;left:10px;" ><br><br>
								
								<center><a href = "loginkayit.jsp" style = "position: relative;"> Üye ol </a></center>

								</form>
							</div>
            				<% }
            					%>
     		 
                  </ul>
                  
                  
                  
                  
            <ul class="nav pull-left">

         		
              <li class="active"><a href="ana.jsp">Anasayfa</a></li>
              <li><a href="kurumsal.jsp">Kurumsal</a></li>
              <li><a href="hizmetler.jsp">Hizmetler</a></li><% 
              if (session.getAttribute("email") != null ){
            				%>
          					<li ><a href="urunlerbtn.jsp">Ürünler</a></li>
            				<% }
              else{%>
              <li ><a href="urunincele.jsp">Ürünler</a></li><% }%>
              <li><a href="referans.jsp">Referans</a></li>
              <li><a href="iletisim.jsp">İletişim</a></li>

              
              

            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

</body>
</html>