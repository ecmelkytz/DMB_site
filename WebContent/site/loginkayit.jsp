<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="bootstrap-master/docs/assets/css/bootstrap.css" rel="stylesheet">
	 <link href="bootstrap-master/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">  
    <link href="css/footer.css" rel="stylesheet">
    
      <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">

    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      
      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="ana.jsp">DMB</a>
          <div class="nav-collapse collapse">
          <ul class="nav pull-right">

                      <li class="dropdown" >
            		 <% 
            			   	session = request.getSession();
            				if (session.getAttribute("email") != null ){
            				%>
            					
            					<a><%= session.getAttribute("ad") %> <%= session.getAttribute("soyad") %> </a>
            					
            					<li><a href="logout.jsp">Çıkış</a></li>
            				<% }
            				else { %>
            					<a class="dropdown-toggle" href="#" data-toggle="dropdown""> Giriş Yap <strong class="caret"></strong></a>
            					<div class="dropdown-menu" style="padding: 20px; padding-bottom: -30px;" >
								<form  method="post" action="Login.jsp"  >


								E-mail :
								<input type="email" name="email" value="">
								<br>
								Parola :
								<input type="password" name="password" value=""><br>
								<input type="submit" name="Submit" value="Giriş" class = "btn btn-primary" style = "width:2in;position: relative;left:10px;" ><br><br>
								
								<center><a href = "loginkayit.jsp" style = "position: relative;"> Üye ol </a></center>
								</form>
							</div>
            				<% }
            					%>

                  </ul>               
            <ul class="nav pull-left">

         		
              <li class=""><a href="ana.jsp">Anasayfa</a></li>
              <li class=""><a href="kurumsal.jsp">Kurumsal</a></li>
              <li><a href="hizmetler.jsp">Hizmetler</a></li>
              <li><a href="urunincele.jsp">Ürünler</a></li>
              <li><a href="referans.jsp">Referans</a></li>
              <li><a href="iletisim.jsp">İletisim</a></li>
              
              

            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
   
  <div class="container">
   <div class="hero-unit" >



      <form action="Datakayit.jsp" class="form-signin">
        <h2 class="form-signin-heading">Üyelik Formu</h2>
        <input name="ad" type="text" class="input-block-level" placeholder="Adınız">
        <input name="soyad" type="text" class="input-block-level" placeholder="Soyadınız">
        <input name="email" type="text" class="input-block-level" placeholder="E-mail adresiniz">
        <input name="sifre" type="password" class="input-block-level" placeholder="Parolanız">
    
        <button class="btn btn-large btn-primary" type="submit">Kayıt</button>
      </form>

    
  </div>
   </div>
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
    <script src="bootstrap-master/docs/assets/js/jquery.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-transition.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-alert.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-modal.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-dropdown.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-scrollspy.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-tab.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-tooltip.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-popover.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-button.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-collapse.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-carousel.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-typeahead.js"></script>
    <script src="bootstrap-master/docs/assets/js/bootstrap-affix.js"></script>

    <script src="bootstrap-master/docs/assets/js/holder/holder.js"></script>
    <script src="bootstrap-master/docs/assets/js/google-code-prettify/prettify.js"></script>

    <script src="bootstrap-master/docs/assets/js/application.js"></script>      	
</body>
</html>