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
    
   

    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->
</head>
<body  style="background-color:#eeeeee">
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
								<input type="text" name="email" value="">
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
              <li><a href="hizmetler.jsp">Hizmetler</a></li><% 
              if (session.getAttribute("email") != null ){
            				%>
          					<li ><a href="urunlerbtn.jsp">Ürünler</a></li>
            				<% }
              else{%>
              <li ><a href="urunincele.jsp">Ürünler</a></li><% }%>
              <li><a href="referans.jsp">Referans</a></li>
              <li class="active"><a href="iletisim.jsp">İletisim</a></li>
              
              

            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    
    <div class="container">
	
      <!-- Main hero unit for a primary marketing message or call to action -->
     <div class="row">
        <div class="span12">		
      <img class="img-square"  src="resim/iletisim/ilet.jpg">
        </div></div>
     
   
  <!-- Form Name -->
   <center><br><h3>Bize Ulaşın</h3></center><HR>
    <div class="hero-unit" style="background-color: #CAC8C8">
 	 <div class="row-fluid">
            <div class="span6">
<form action="iletal.jsp">
<fieldset > <legend>İletişim Formu</legend>
<!-- Text input-->

 <div class="row" style="margin-left:30px">
        
<div class="control-group">
  <label class="control-label" for="textinput"><b>Ad-Soyad</b> </label>
  <div class="controls">
    <input id="textinput" name="ad" type="text" placeholder="" >
    </div>
  
</div>
<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="textinput" ><b>Email Adresiniz</b></label>
  <div class="controls">
    <input id="textinput" name="email" type="text" placeholder="" >
   </div>
  </div>


<!-- Textarea -->
<div class="control-group">
 <label class="control-label" for="textarea"><b>Mesajınız</b></label>
  <div class="controls">                     
    <textarea id="textarea" name="not"  style="width: 300px; height: 150px" placeholder=""></textarea>
  </div>
</div>

<!-- Button -->
<div class="control-group">
  <label class="control-label" for="singlebutton"></label>
  <div class="controls">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Gönder</button>
  </div>
</div>
</div>

</fieldset> <br></form>
            </div>
            <div class="span6">
                
 <h4>İLETİŞİM BİLGİLERİ</h4>
          <p> DÜNYA MÜHENDİSLİK BİLGİSAYAR<br>
            SİSTEMLERİ ve İLETİŞİM SAN. TİC. LTD. ŞTİ.<br>
            Adres : Ulugazi Mah. İstiklal 
             Cad. No: 24/6 Kat.1 <br>
            (Öğretmenevi Karşısı) SAMSUN<br>
             E-Mail : dmb@dmb.com.tr <br>
             Tel. : (362) 435 04 93 <br>
             Fax : 433 16 75 <br>
             Gaziler Vergi Dairesi / 322 013 28 39 <br>
             </p>
             
            </div>
     </div>
 

   <div class="row"> 
 <div class="span6">
  <h4>KROKİ</h4>
  <fieldset>
      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="span10">
          
        
<p><a href="http://maps.google.com/maps/ms?f=q&hl=en&geocode=&ie=UTF8&om=1&msa=0&ll=41.2889,36.332989&spn=0.003515,0.009978&z=17&msid=102087767989659699571.00044592593ea84d3e697" target="_blank"><img class="img-rounded" data-src="holder.js/200x200" src="resim/iletisim/dmbharita.gif" alt="kroki "/></a></p>
</div><!-- /.span4 -->
        
      </div><!-- /.row -->					
	</fieldset></div>

</div>  
</div>    
</div>     
    
    
    <!-- Footer
    ================================================== -->
	<jsp:include page="footer.jsp"></jsp:include>
    
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


    <!-- Analytics
    ================================================== -->
    <script>
      var _gauges = _gauges || [];
      (function() {
        var t   = document.createElement('script');
        t.type  = 'text/javascript';
        t.async = true;
        t.id    = 'gauges-tracker';
        t.setAttribute('data-site-id', '4f0dc9fef5a1f55508000013');
        t.src = '//secure.gaug.es/track.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(t, s);
      })();
    </script>
</body>
</html>