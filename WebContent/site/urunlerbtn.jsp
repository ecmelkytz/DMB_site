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
	 <link href="bootstrap-master/docs/assets/css/docs.css" rel="stylesheet">
	  <link href="bootstrap-master/docs/assets/js/google-code-prettify/prettify.css" rel="stylesheet">  
    <link href="css/footer.css" rel="stylesheet">
      
      <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="bootstrap-master/docs/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="bootstrap-master/docs/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="bootstrap-master/docs/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="bootstrap-master/docs/assets/ico/apple-touch-icon-57-precomposed.png">
     <link rel="shortcut icon" href="bootstrap-master/docs/assets/ico/favicon.png">
    
   

    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    

    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-146052-10']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script> 
</head>
<body  style="background-color:#eeeeee" data-spy="scroll" data-target=".bs-docs-sidebar">
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
								<a href = "Register.jsp" style = "position: relative;left:1.3in;"> Hesabım yok </a><br><br>
								<input type="submit" name="Submit" value="Giriş" class = "btn btn-success" style = "width:2in;position: relative;left:10px;" >


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
          					<li class="active"><a href="urunlerbtn.jsp">Ürünler</a></li>
            				<% }
              else{%>
              <li class="active"><a href="urunlerincele.jsp">Ürünler</a></li><% }%>
              <li><a href="referans.jsp">Referans</a></li>
              <li><a href="iletisim.jsp">İletisim</a></li>
              
              

            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
 
 
 <div class="container">
<center><img class="img-square"  src="resim/urunler/de.PNG"></center><br>


 	<div class="row" >
      <div class="span3 bs-docs-sidebar">
        <ul class="nav nav-list bs-docs-sidenav">
          <li><a href="#lap"><i class="icon-chevron-right"></i>Laptop Bilgisayar</a></li>
          <li><a href="#tab"><i class="icon-chevron-right"></i>Tablet PC</a></li>
          <li><a href="#masaustu"><i class="icon-chevron-right"></i>Masaüstü Bilgisayar</a></li>
          <li><a href="#bil"><i class="icon-chevron-right"></i>Bilgisayar Aksesuar</a></li>
          <li><a href="#lcd"><i class="icon-chevron-right"></i>LCD-LED Monitörler</a></li>
          <li><a href="#pro"><i class="icon-chevron-right"></i>Projeksiyon</a></li>
          <li><a href="#parca"><i class="icon-chevron-right"></i>Bilgisayar Parçaları</a></li>
          <li><a href="#harddisk"><i class="icon-chevron-right"></i>Harddisk</a></li>
          
        </ul>
      </div>
<div class="span9">    
   
<section id="lap">
    <div class="page-header">
       <h3>Laptop Bilgisayar</h3>
          </div>
         
      <!-- Three columns of text below the carousel -->
      <div class="row-fluid">
        <div class="span3">
         <img  src="resim/urunler/Asus.jpg"  >
          <h5>ASUS X55A </h5>
          <p>İşlemci Markası Intel,Modeli 1000M ,Tipi,Intel Celeron,Hızı 1.80 Ghz,Cache	2 MB </p>
          <p>Fiyatı : 1.599 TL</p>
          </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/Acer.jpg"  >
          <h5>ACER E1-531-B9602G50MNKS B960 2GB 500GB OB LINUX 15.6</h5>
          <p>İşlemci Markası Intel,Modeli B960, Tipi Intel Pentium Dual Core,Hızı 2.20 Ghz,Cache 2 MB,Boyutu 15.6,Tipi LED</p>
          <p>Fiyatı : 1.300 TL</p>
          </div><!-- /.span4 -->
          
           <div class="span3">
        <img   src="resim/urunler/Exper.jpg"  >
          <h5>EXPER NB KARİZMA A5B-C42</h5>
          <p> İşlemci Markası Intel, Modeli	B960, Tipi Intel Pentium Dual Core, Hızı 2.20 Ghz, Cache 2 MB,Ekran Boyutu 15.6	</p>
          <p>Fiyatı : 1.279 TL</p>
          </div><!-- /.span4 -->
        
        
        <div class="span3">
          <img   src="resim/urunler/toshiba.jpg" >
          <h5>TOSHIBA SATELLITE C850D-10K </h5>
          <p>İşlemci Markası Amd, Modeli E1-1200, E1-1200,Tipi AMD E SERISI,Hızı 1.4 Ghz,Ekran Boyutu 15.6 ,Tipi TFT,Çözünürlüğü 1366x768</p>
        <p>Fiyatı : 1.700 TL</p>
            </div><!-- /.span4 -->
         </div>
      </section>
    
     <section id="tab">
          <div class="page-header">
            <h3>Tablet PC</h3>
          </div>
     <div class="row-fluid">
        <div class="span3">
         <img  src="resim/urunler/tab22.jpg"  >
          <h5>Probook PRBT800 Tablet</h5>
          <p>Probook PRBT800 1.5GHz 8GB Nand Disk 8 Tablet </p>
          <p>Fiyatı : 150 TL</p>
    </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/tablet1.jpg"  >
          <h5>Quatronic Qpad 7001 tablet pc</h5>
          <p>Quatronic Qpad 7001 A10 1.5Ghz 1GB 8GB HDMI 7inc tablet pc</p>
          <p>Fiyatı : 199 TL</p>
          </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/tab.jpg"  >
          <h5>Everest EVERPAD DC-702 Tablet pc</h5>
          <p> Everest EVERPAD DC-702 7inc 1GB DDR3 1.6GHz X2 16GB BT. Çift Kamera Parlak Siyah Android 4.1 Tablet Pc</p>
          <p>Fiyatı : 250 TL</p>
          </div><!-- /.span4 -->
        
        <div class="span3">
          <img   src="resim/urunler/tab1.jpg" >
          <h5>Artes D708 Tablet Pc</h5>
          <p>Artes D708 Dual Core 1.5GHz 1GB 8GB HDMI 7inc Siyah Tablet Pc</p>
          <p>Fiyatı : 300 TL</p>
        
            </div><!-- /.span4 -->
         </div>
      </section>
      
      <section id="masaustu">
          <div class="page-header">
            <h3>Masaüstü Bilgisayar</h3>
          </div>
     <div class="row-fluid">
        <div class="span3">
         <img   src="resim/urunler/kasa.jpg"  >
          <h5>Exper Flex DC1-H27</h5>
          <p>Intel® Core™ i3-3220 (3.3 GHz,3 MB önbellek, 2 çekirdekli</p>
          <p>Fiyatı : 599 TL</p>
    </div><!-- /.span4 -->
    
    <div class="span3">
        <img   src="resim/urunler/hp.jpg"  >
          <h5>HP D2M03EA h8-1500es</h5>
          <p>3. Nesil Intel Core i7 3770 8GB 2TB 3GB VGA Win8</p>
          <p>Fiyatı : 689 TL</p>
          </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/dellkasa.jpg"  >
          <h5>Dell Vostro 270M-45L45B</h5>
          <p>Intel Core i5-3450 Dört çekirdekli işlemci (3.10GHz / 3.5GHz, 6MB)</p>
          <p>Fiyatı : 1.000 TL</p>
          </div><!-- /.span4 -->
        
        <div class="span3">
          <img   src="resim/urunler/lenovakasa.jpg" >
          <h5>Lenovo E72 RCEC4TX </h5>
          <p>Intel Core i5-3470s (2.9GHz / Max 3.6 GHz , 6MB cache)</p>
          <p>Fiyatı : 999 TL</p>
        
            </div><!-- /.span4 -->
         </div>
      </section>
      
      <section id="bil">
          <div class="page-header">
            <h3>Bilgisayar Aksesuar</h3>
          </div>
     <div class="row-fluid">
        <div class="span3">
         <img   src="resim/urunler/fare.jpg"  >
          <h5>Gigabyte M7580 Kablosuz Optik Mouse</h5>
          <p>Kablosuz ,USB Nano Alıcı , 3.86" x 2.32" x 1.38"</p>
          <p>Fiyatı : 20 TL</p>
    </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/sogutucu.png"  >
          <h5>Frisby FNC-35ST 10-17 Notebook Soğutucu</h5>
          <p>Fiyatı : 45 TL</p>
          <p></p>
          </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/canta.jpg"  >
          <h5>Targus CN313 Klasik Notebook Çantası</h5>
          <p>Boyutlar 39.5 x 10.2 x 26.5cm Malzeme Naylon Renk Siyah Ağırlık 0.60 kg</p>
          <p>Fiyatı : 67 TL</p>
          </div><!-- /.span4 -->
          
          <div class="span3">
          <img   src="resim/urunler/flas.jpg" >
          <h5>Kingston 8GB Usb Bellek</h5>
          <p>Fiyatı : 15 TL</p>
          <p></p>
       </div><!-- /.span4 -->
      </div>
      </section>
      <section id="bil">
          <div class="row-fluid">
        <div class="span3">
         <img   src="resim/urunler/kulak.jpg" >
          <h5>Creative SB Tactic 3D Rage Kablosuz Kulaklık</h5>
          <p>Gürültü önleyicili Kondenser, Frekans Aralığı 20Hz ~ 20kHz</p>
          <p>Fiyatı : 34 TL</p>
       </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/klavye.jpg"  >
          <h5>Logitech G105 Oyuncu Klavye</h5>
          <p>Yüksek hızlı USB 2.0 ,Kısayol Tuşları:6 adet programlanabilir G tuşu</p>
          <p>Fiyatı : 89 TL</p>
          </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/hoparlor.jpg"  >
          <h5>LOGITECH Z906 980-000468 HOPARLOR</h5>
          <p>3D Stereo surround ses,Bağlantı noktalı, bas sesi yana veren subwoofer</p>
          <p>Fiyatı : 300 TL</p>
          </div><!-- /.span4 -->
          
          <div class="span3">
          <img   src="resim/urunler/webcam.jpg" >
          <h5>OMAX 1.3 MP Webcam LED Işıklı</h5>
          <p>Fiyatı : 56 TL</p>
          <p></p>
       </div><!-- /.span4 -->
      </div>
      </section>
      
      
      
      
      
   <section id="lcd">
          <div class="page-header">
            <h3>LCD-LED Monitörler</h3>
          </div>
     <div class="row-fluid">
        <div class="span3">
         <img   src="resim/urunler/lcd.jpg"  >
          <h5>Acer 18.5 G196HQLB LED Monitör</h5>
          <p>Ekran Büyüklüğü 18.5" (47cm) Çözünürlük 1366x768 60Hz Ekran Tipi TFT LCD 16:9 HD</p>
          <p>Fiyatı : 220 TL</p>
    </div><!-- /.span4 -->
        
         <div class="span3">
        <img   src="resim/urunler/lcd3.jpg"  >
          <h5>HP B5M13AA LED Monitor</h5>
          <p>Ekran Büyüklüğü 20 inç (50,8 cm) Çözünürlük 1600 x 900 Ekran Tipi LED Arkadan Aydınlatmalı LCD Monitör</p>
          <p>Fiyatı : 289 TL</p>
          </div><!-- /.span4 -->
        
      <div class="span3">
        <img   src="resim/urunler/lcd1.jpg"  >
          <h5>Philips 24 249C4QHSB-00 LED Monitör</h5>
          <p>Ekran Büyüklüğü	 24 inç / 61 cm ,Çözünürlük	 60Hz'de 1920 x 1080 ,Ekran Tipi AMVA LCD monitör </p>
          <p>Fiyatı : 324 TL</p>
          </div><!-- /.span4 -->  
        
        <div class="span3">
          <img   src="resim/urunler/asuslcd.jpg" >
          <h5>ASUS VS278Q LED 27 2MS D-SUB DVI-D HDMI DP</h5>
          <p>Ekran Boyutu	 27.0 inç ,Ekran Tipi LED,Çözünürlük	 1920 X 1080</p>
          <p>Fiyatı : 450 TL</p>
        
            </div><!-- /.span4 -->
         </div>
      </section>    
       
     <section id="pro">
          <div class="page-header">
            <h3>Projeksiyon</h3>
          </div>
     <div class="row-fluid">
        <div class="span3">
         <img   src="resim/urunler/pro.jpg"  >
          <h5>Dell 1210S 800x600 Projeksiyon</h5>
          <p>Ağırlık (KG) 2.3KG ,Çözünürlük DPI	 800X600 ,Işık Gücü (Lumen)	 2500.0 ,Lamba Gücü (Watt) 180</p>
          <p>Fiyatı : 699 TL</p>
    </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/hd.jpg"  >
          <h5>Epson EH-TW480 LCD 1280x720 2800 Ans. 3000:1</h5>
          <p>Fiyatı : 578 TL</p>
          <p></p>
          </div><!-- /.span4 -->
        
        <div class="span3">
        <img  src="resim/urunler/pro1.jpg"  >
          <h5>BenQ MS502 DLP 800x600 2700AL 3D 13000:1</h5>
          <p>Görüntü Teknolojisi DLP,Dogal Çözünürlük SVGA (800 x 600),Parlaklık 2700 ANSI lumens</p>
          <p>Fiyatı : 423 TL</p>
          </div><!-- /.span4 -->
        
        <div class="span3">
          <img   src="resim/urunler/pro2.jpg" >
          <h5>Acer X111 DLP SVGA projeksiyon</h5>
          <p>Görüntü Teknolojisi DLP / 0.55" DarkChipTM 3 DMD Dogal Çözünürlük Doğal SVGA (800 x 600) Parlaklık 2,700 ANSI Lumens (Standard)</p>
        
            </div><!-- /.span4 -->
         </div>
      </section>  
       
       <section id="parca">
          <div class="page-header">
            <h3>Bilgisayar Parçaları</h3>
          </div>
     <div class="row-fluid">
        <div class="span3">
         <img   src="resim/urunler/ram1.jpg"  >
          <h5>OEM 2 GB 1600 MHZ NOTEBOOK RAM</h5>
          <p>Fiyatı : 57 TL</p>
          <p></p>
    </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/ekran.jpg"  >
          <h5>4GB Agp Bir Ekran kartı</h5>
          <p>Fiyatı : 1.278 TL</p>
          <p> </p>
          </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/power.jpg"  >
          <h5>CoolerMaster 400W Elite Power (RS400-PSAPI3-EU)</h5>
          <p>Fiyatı : 108 TL</p>
          <p></p>
          </div><!-- /.span4 -->
        
        <div class="span3">
          <img   src="resim/urunler/ses.GIF" >
          <h5>sapphire-ati-hd6750 ses kartı</h5>
          <p>Fiyatı : 586 TL</p>
          <p></p>
        
            </div><!-- /.span4 -->
         </div>
      </section>
      <section id="parca">
          <div class="row-fluid">
        <div class="span3">
         <img  src="resim/urunler/seagate.jpg" >
          <h5>Seagate Barracuda® Sabitdisk</h5>
          <p>1TB 7200RPM SATA 6Gb/s 3.5" Sabit Disk ST1000DM003</p>
          <p>Fiyatı : 345 TL</p>
       </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/et.jpg"  >
          <h5>Ethernet Kartı</h5>
          <p>Tp-Link TG-3269 101001000 Mbps Gbit Pcı</p>
          <p>Fiyatı : 45 TL</p>
          </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/islem.jpg"  >
          <h5> İslemci</h5>
          <p>Intel Pentium G860 3Ghz 3Mb Cache Sandy Brige</p>
          <p>Fiyatı : 869 TL</p>
          </div><!-- /.span4 -->
          
          <div class="span3">
          <img  src="resim/urunler/anakart.jpg" >
          <h5> ASUS ANAKART</h5>
          <p> P9X79 INTEL X79 SOKET 2011 DDR3 2400MHZ (O.C.) SATA 3.0 USB 3.0</p>
          <p>Fiyatı : 247 TL</p>
       </div><!-- /.span4 -->
      </div>
      </section>
      
      
       <section id="harddisk">
          <div class="page-header">
            <h3>Harddisk</h3>
          </div>
     <div class="row-fluid">
        <div class="span3">
         <img   src="resim/urunler/sss.jpg"  >
          <h5>LG HARDDISK</h5>
          <p>LG-500GB-2-5-quot-SIYAH-HARICI-</p>
          <p>Fiyatı : 309 TL</p>
    </div><!-- /.span4 -->
    
    <div class="span3">
        <img   src="resim/urunler/ss.jpg"  >
          <h5>Segate-500-GB-portable-External</h5>
          <p>Fiyatı : 180 TL</p>
          <p></p>
          </div><!-- /.span4 -->
        
        <div class="span3">
        <img   src="resim/urunler/hard.jpg"  >
          <h5>Kingston Wi-Drive 32 Gb Kablosuz wi-fi harddisk</h5>
          <p>Kingston Wi-Drive 32 Gb Kablosuz wi-fi</p>
          <p>Fiyatı : 48 TL</p>
          </div><!-- /.span4 -->
        
        <div class="span3">
          <img class="img-square"  src="resim/urunler/hddd.jpg" >
          <h5>SONY-HARDDISK</h5>
          <p>SONY-HD-E1-1TB-HARICI-HARDDISK-2-5INC</p>
          <p>Fiyatı : 276 TL</p>
        
            </div><!-- /.span4 -->
         </div>
      </section>
      
       
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
    
</body>
</html>