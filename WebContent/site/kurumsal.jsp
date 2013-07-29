<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>

    <title>Bootstrap, from Twitter</title>
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
              <li class="active"><a href="kurumsal.jsp">Kurumsal</a></li>
              <li><a href="hizmetler.jsp">Hizmetler</a></li><% 
              if (session.getAttribute("email") != null ){
            				%>
          					<li><a href="urunlerbtn.jsp">Ürünler</a></li>
            				<% }
              else{%>
              <li><a href="urunincele.jsp">Ürünler</a></li><% }%>
              <li><a href="referans.jsp">Referans</a></li>
              <li><a href="iletisim.jsp">İletisim</a></li>
              
              

            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
      	
   <div class="container">
     <img src="resim/kurumsal/aa1.jpg">
     
        <center><br><h3>KURUMSAL</h3></center><HR>
        <div class="hero-unit" style="background-color:#CAC8C8">
        <p>1999 yılında kurulan Dünya Mühendislik Bilgisayar Sistemleri ve İletişim Sanayi Ticaret Limited 
Şirketi bilgisayar sektöründe, son kullanıcıdan küçük orta ve büyük boy işletmeler ve kurumlara kadar
 gerek yazılım ve gerek donanım alanında satış ve satış sonrası destek noktasında Samsun'da 9 yıldır
  hizmet vermektedir.
</p>
Firmamız marka bazında DATATEKNİK Bilgisayar A.Ş nin ürettiği EXPER Bilgisayarların satış ve satış 
sonrası teknik hizmetlerini yüklenmekte olup, aynı zamanda oem ürünler ve sarf malzemeler noktasında 
da ihtiyaçlarınıza cevap verebilecek kapasitededir.

Firmamızda 1 Elektronik ve Haberleşme Mühendisi, 1 Bilgisayar Mühendisi, 2 Bilgisayar yazılım teknikerleri, 
3 Bilgisayar donanım teknikerleri, 1 İşletme mezunu muhasebeci, ve 2 yardımcı teknisyen personeller istihdam
 edilmektedir.

Firmamızın misyonu kaliteden ödün vermeden, ehliyetli ve liyakatlı tecrübeli kadrosuyla Kurumların ve
 İşletmelerin Bilgisayar ve Ekipman ihtiyaçlarını temin edip, satış sonrası olası problemlere karşı en 
 kısa zamanda çözüm üretip, iş akışının aksamadan devamlılığını sağlamaktır. Müşteri memnuniyeti temel 
 ilkemizdir. 
 
<p><p><h4>Firmamızın Faaliyet  Alanları:</h4></p>
				<ol>
					<li><span>Exper Bilgisayar ve Sunucuları yetkili bayii ve servisi</span></li>
					<li><span>Bilgisayar ve ekipmanları satış ve satış sonrası destek</span></li>
					<li><span>WEB programlama ve tasarım hizmetleri</span></li>
					<li><span>NETWORK hizmetleri</span></li>
					<li><span>ADSL Telekom çözüm ortaklığı</span></li>
					<li><span>Alarm ve Güvenlik Sistemleri</span></li>
					<li><span>Periodik Bakım Hizmetleri</span></li>
				</ol>
				</p>
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


</body>
</html>