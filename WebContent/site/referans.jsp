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
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="index.jsp">DMB</a>
          <div class="nav-collapse collapse">
          <ul class="nav pull-right">
<!--                     <li id="fat-menu" class="dropdown"> -->
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
								<a href = "loginkayit.jsp" style = "position: relative;left:1.3in;"> Üye ol </a><br><br>
								<input type="submit" name="Submit" value="Giriş" class = "btn btn-primary" style = "width:2in;position: relative;left:10px;" >


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
          					<li><a href="urunlerbtn.jsp">Ürünler</a></li>
            				<% }
              else{%>
              <li><a href="urunincele.jsp">Ürünler</a></li><% }%>
              <li class="active"><a href="referans.jsp">Referans</a></li>
              <li><a href="iletisim.jsp">İletisim</a></li>
              
              

            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    
       
    <div class="container" style="">
   
 		<img src="resim/referans/referans3.jpg" >
 		  <form>
    <fieldset>
    <legend><center><br><h2>Referanslarımız</h2></center></legend>
  	</fieldset>
    </form>
    
 		<!-- Main hero unit for a primary marketing message or call to action -->
      <div class="hero-unit" style="background-color: #CAC8C8">
        <table>
							<tr>
								<td>
									<ul>
										<li><span>19 Mayıs Belediyesi</span></li>
										<li><span>Aksa Enerji Üretim A.Ş</span></li>
										<li><span>Albayrak Yapı Malzemeleri ve İnşaat San. Tic. Ltd. Şti</span></li>
										<li><span>Ali Mutlu Optik Dünyası</span></li>
										<li><span>Arı Dayanıklı Tüketim Malları Paz. Tic. A.Ş (İstikbal Bölge)</span></li>
										<li><span>Atatürk Anadolu Lisesi</span></li>
										<li><span>Avrasya İnşaat San. Tic. Ltd. Şti</span></li>
										<li><span>Aziz Atik Anadolu Öğretmen Lisesi</span></li>
										<li><span>Camadan A.Ş</span></li>										
										<li><span>DAS Derneği</span></li>										
										<li><span>Değişim A.Ş</span></li>
										<li><span>Demir İnşaat Mimarlık San. Tic. Ltd. Şti</span></li>
										<li><span>Dostder Eğitim Kültür ve Yardımlaşma Derneği</span></li>
										<li><span>Eğitim Bir Sen</span></li>
										<li><span>Endülüs İnşaat Taah. Mimarlık Dekorasyon San. Ltd. Şti</span></li>
										<li><span>Erol Ofset Matbaacılık San. Tic. Ltd. Şti</span></li>
										<li><span>Gazi İmar İnşaat Ltd. Şti</span></li>
										<li><span>Gençay İnşaat Turizm San. Tic. Ltd. Şti</span></li>
										<li><span>Gençlik Spor İl Müdürlüğü</span></li>
										<li><span>Gençtürk Plastik San. Ltd. Şti</span></li>
										<li><span>Gıda ve Çevre Kontrolü Şube Müdürlüğü</span></li>
										<li><span>Göğüs Hastalıkları Hastanesi</span></li>
										<li><span>Hazer İnşaat Mühendislik Tic. Ltd. Şti</span></li>
										<li><span>Hocaoğlu A.Ş</span></li>			
										<li><span>IBK Asansör San. Tic. Ltd. Şti</span></li>
									</ul>
								</td>
								<td>
									<ul>
										<li><span>İbrahim Tanrıverdi Sosyal Bilimler Lisesi</span></li>
										<li><span>İlkadım Belediyesi</span></li>
										<li><span>İş Teftiş Müdürlüğü</span></li>
										<li><span>Kadın Doğum ve Çocuk Hastalıkları Hastanesi</span></li>
										<li><span>Kalaycıoğlu İnş. San. Tic. Ltd. Şti</span></li>
										<li><span>Kalender Yapı PVC Mobilya San. Tic. Ltd. Şti</span></li>
										<li><span>Karadeniz Tarımsal Araştırma Enstitüsü Müdürlüğü</span></li>
										<li><span>Karayolları 7. Bölge Müdürlüğü</span></li>
										<li><span>Kayhan Asansör San. Tic. ve Ltd. Şti</span></li>
										<li><span>Köysam Gıda Pazarlama A.Ş</span></li>
										<li><span>Kuryap Mühendislik San. Tic. Ltd. Şti</span></li>
										<li><span>Mahya Diş İthalat İhracat Paz. Ltd. Şti</span></li>
										<li><span>Memsan Tarım makinaları İmalat San. Ltd. Şti</span></li>
										<li><span>Meteoroloji Bölge Müdürlüğü</span></li>
										<li><span>ORC Çelik Yapı Ltd. Şti</span></li>
										<li><span>Ortak Hukuk Bürosu</span></li>
										<li><span>Ömür Medikal</span></li>
										<li><span>Özde Hukuk Bürosu</span></li>
										<li><span>Özel Acuner Tıbbi Tahliller Lab.</span></li>
										<li><span>Özel Feza ve Berk Kolejleri</span></li>
										<li><span>Özel İlgi Tıp Merkezi</span></li>										
										<li><span>Rahmanlar A.Ş</span></li>
										<li><span>Rehber Hukuk Bürosu</span></li>
									</ul>			
								</td>
								<td>
									<ul>										
										<li><span>Sağlık Donatım Bölge Müdürlüğü</span></li>
										<li><span>Samsun Bölge Hıfsısıha Enstitüsü Müdürlüğü</span></li>
										<li><span>Samsun Elektrik Mühendisleri Odası</span></li>
										<li><span>Samsun Nobel Tıp Kitapevi</span></li>
										<li><span>Sanayi Ticaret İl Müdürlüğü</span></li>
										<li><span>Sel Beton Yapı San. Tic.Ltd. Şti</span></li>
										<li><span>Sena End. İnşaat Ltd. Şti</span></li>
										<li><span>S.S Flora Çiçekçilik Kooperatifi</span></li>
										<li><span>Tapu Kadastro Bölge Müdürlüğü</span></li>
										<li><span>Tarım İl Müdürlüğü</span></li>
										<li><span>Tarım Reformu Bölge Müdürlüğü</span></li>										
										<li><span>Tedaş İşletme Başmühendisliği</span></li>
										<li><span>Tekkeköy 19 Mayıs İlköğretim Müdürlüğü</span></li>
										<li><span>Tekkeköy Atatürk İlköğretim Müdürlüğü</span></li>
										<li><span>Tekkeköy Belediyesi</span></li>										
										<li><span>Tekkeköy İlçe Milli Eğitim Müdürlüğü</span></li>
										<li><span>Tekkeköy İlçe Tarım Müdürlüğü</span></li>
										<li><span>Tekkeköy Kaymakamlığı</span></li>
										<li><span>Türk Eğitim Sen</span></li>
										<li><span>Ufuk Mobilya San. Tic. Ltd. Şti</span></li>
										<li><span>Yafeya Turizm Otelcilik A.Ş</span></li>
										<li><span>Yapıtek Mühendislik San. Tic. Ltd. Şti</span></li>
										<li><span>Yaşam Ajans</span></li>
										<li><span>Yeminli Mali Müşavirlik Bürosu Ali Osman Köseoğlu</span></li>
										<li><span>Yücel Seyahat Turizm Ltd. Şti</span></li>
									</ul>								
								</td>							
							</tr>
						</table>
        
       
      </div>
    </div>
    
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