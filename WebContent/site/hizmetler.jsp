<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="bootstrap-master/docs/assets/css/bootstrap.css" rel="stylesheet">
    <link href="bootstrap-master/docs/assets/css/docs.css" rel="stylesheet">
     <link href="css/footer.css" rel="stylesheet">
    <link href="bootstrap-master/docs/assets/js/google-code-prettify/prettify.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="bootstrap-master/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="bootstrap-master/docs/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="bootstrap-master/docs/assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="bootstrap-master/docs/assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="bootstrap-master/docs/assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="bootstrap-master/docs/assets/ico/favicon.png">
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
<body data-spy="scroll" data-target=".bs-docs-sidebar" style="background-color:#eeeeee">
   
<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="ana.jsp">DBM</a>
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
								<form  method="post" action="login"  >


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
              <li class="active"><a href="hizmetler.jsp">Hizmetler</a></li><% 
              if (session.getAttribute("email") != null ){
            				%>
          					<li><a href="urunlerbtn.jsp">Ürünler</a></li>
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
                  


<div class="container">

    <!-- Docs nav
    ================================================== -->
 <div class="row" >
 <div class="span3 bs-docs-sidebar">
        <ul class="nav nav-list bs-docs-sidenav">
          <li><a href="#marka"><i class="icon-chevron-right"></i> Marka ve OEM Satış</a></li>
          <li><a href="#periyodik"><i class="icon-chevron-right"></i> Periodik Bakım</a></li>
          <li><a href="#ADSL"><i class="icon-chevron-right"></i> ADSL Çözümleri</a></li>
          <li><a href="#teknikdestek"><i class="icon-chevron-right"></i>Teknik Destek ve Servis</a></li>
          <li><a href="#güvenlik"><i class="icon-chevron-right"></i> Güvenlik Çözümleri</a></li>
          <li><a href="#network"><i class="icon-chevron-right"></i>Network Çözümleri</a></li>
          <li><a href="#servis"><i class="icon-chevron-right"></i> Teknik Servis</a></li>
          <li><a href="#mservis"><i class="icon-chevron-right"></i>Masaüstü Bilgisayar Teknik Servisi</a></li>
          <li><a href="#fotokopi"><i class="icon-chevron-right"></i>Yazıcı-Printer ve Fotokopi Teknik Servisi</a></li>
          <li><a href="#dizüstü"><i class="icon-chevron-right"></i>Laptop Masaüstü  Bilgisayarlar ve Tablet-PC Teknik Servisi</a></li>
        </ul>
      </div> 
  <div class="span9">
     
<section id="marka">
<div class="page-header">
 <h3>Marka ve OEM Satış</h3>       
     </div>
           <div  class="row-fluid">
            <div class="span4">

 <p>Firmamız marka bazında istekleriniz doğrultusunda her türlü markayı temin edip bilgisayarların satış ve 
satış sonrası teknik hizmetlerini yüklenmekte olup, aynı zamanda oem ürünler ve sarf
 malzemeler noktasında da ihtiyaçlarınıza cevap verebilecek kapasitededir.
Exper bilgisayarın Samsun bayii olan Dünya Mühendislik Bilgisayar Exper bilgisayar, notebooklarının 
Satış ve Teknik servis noktası olarak siz değerli müşterilerimize hizmet vermektedir.</p>
</div>

<div class="span5">
              <img src="resim/hizmetler/yazangenc-laptop-1.jpg" style="border:3px;padding:5px" >
             </div>
          </div>
        </section>


<section id="periyodik">
          <div class="page-header">
            <h3>Periodik Bakım</h3>
          </div>
          <p>
Kurumsal olarak hizmet veren siz müşterilerimize yıllık bakım anlaşması adı altında
 yıllık 4 periyotluk bilgisayar bakımı sağlamaktadır. Aylık veya yıllık bakım sözleşmelerimizi imzalayarak
  sisteminizde oluşan problemleri en kısa sürede çözüme kavuşturma imkanına sahipsiniz...
Bakım Anlaşmasının Avantajları
Zaman kaybınız en aza indirilir.
Öncelik daima sizdedir.
Verileriniz yedeklenir.
Sisteminiz daha kararlı bir hale gelir.
Daha ekonomiktir.</p>
</section>


<section id="ADSL">
          <div class="page-header">
            <h3>ADSL Çözümleri</h3>
          </div>
          <p>
Türk Telekom'un internet servisi TTNet ve TurkNet ile yaptığımız çözüm ortaklığı anlaşmaları sonucu, 
firmamız sizlere ADSL başvuru, takip ve kurulum sürecinde 
gerekli tüm desteği sunmaktadır. Seçeceğiniz servis sağlayıcıdan ADSL başvurularınız için bizimler irtibata geçebilirsiniz.
Son kampanyalar ile ilgili ayrıntıları firma web sayfaları üzerinden takip edebilirsiniz.

<ul>
					<li><font color="orange">TTNet</font> için <a href="http://www.ttnet.com.tr/">http://www.ttnet.com.tr</a></li>
					<li><font color="#0066CC">Turk</font><font color="orange">Net</font> için 
					<a href="http://adsl.turk.net/">http://adsl.turk.net/</a></li>
			</ul>
</p>
</section>

<section id="teknikdestek">
<div class="page-header">
 <h3>Teknik Destek ve Servis</h3>       
     </div>
           <div  class="row-fluid">
            <div class="span4">

 <p>Evinizde veya işyerinizde bilgisayarınızla ilgili donanımsal veya
 yazılımsal herhangi bir problem oluştu ve çözemediyseniz, ne yapacağım şimdi diye düşünmenize
  gerek yok. Yapmanız gereken sadece bize ulaşmak.Donanım ve yazılım problemlerinizi telefon, uzak
   bağlantı ve yerinde yardım ile çözüme kavuşturuyoruz.</p>
</div>
<div class="span8">
              <img class="img-square"  src="resim/hizmetler/t.gif">
            <div>
        </section>
        
  <div class="page-header">
 <p>     
  Kurumsal ve bireysel olarak teknik anlamda 
   çözümler sunan firmamız uzman kadrosuyla destek vermektedir
Dünya Mühendislik Exper Uzman Servis Noktası olarak hizmet vermektedir. Notebooklarınızın her türlü
 tamiri, anakart, ekran, klavye vb, konusunda uzman teknik servisimiz tarafından garantili olarak 
 gerçekleştirilmektedir. Hertürlü bilgisayar ve yan ürünleri ile ilgili problemimiz için teknik
  servisimizle görüşebilirsiniz. Servisimizde notebook, notebook ekranı, notebook anakart, notebook klavye, masaüstü 
  bilgisayar, monitör, lcd, yazıcı, ve 
diğer bilgisayar ekipmanlarının tamiri, veri - data kurtarma işlemleri yapılmaktadır.</p>      
       
        
<section id="güvenlik">
<div class="page-header">
 <h3>Güvenlik Çözümleri</h3>       
     </div>
           <div  class="row-fluid">
            <div class="span4">

 <p>Dünya Mühendislik olarak işyerleri, apartman ve özel mülkleriniz için her türlü kamera ve alarm sitemlerinin kurulumu, teknik
 desteği ve ve kullanım konusunda bilgilendirme hizmetlerini müşterilerimizin hizmetine sunmaktayız.</p>
</div>

<div class="span7">
              <img class="img-square"  src="resim/hizmetler/g.jpg">
             </div>
          </div>
        </section>
<div class="page-header">
          <p>
KAMERA, GÜVENLİK VE ALARM SİSTEMLERİ Güvenlik sistemleri ile ilgili yapılan anketler sonucunda, güvenlik sistemlerinin lüks 
olmaktan çıkıp günlük hayat içerisinde bir ihtiyaç haline geldiği sonucu ortaya çıkmıştır.
İşyeri sahipleri kamera sistemleri sayesinde işyerlerinin dış etkenlere karşı güvenliğini sağlamanın yanı sıra çalışanlarının
 perfonmansı üzerinde gözlem yapmak ve değerlendirmelerde bulunma şansına sahiptirler. Bu da iş kalitesinin artmasına bir etken
  olacaktır.
Bina ve çevre güvenliğinizi de kamera sistemi sayesinde gözetim altında bulundurabilirsiniz. İhtiyaca ve koşullara göre muhafaza
 içinde yada harici IR(gece görüşlü) kamameralar veya Speed Dome(hareketli) kameralar kullanılabilir.
Günümüzde kamera sistemlere evlere kadar girmiş durumdadır. Evlerdeki sistemlerin yüksek oranda kullanım amacı ailelerin çocuklarını 
dışarıdayken de izleyebilme isteğidir.
İsteğe göre bilgisayar üzerine adapte edilmiş, harici dijital kayıt cihazları şeklinde yada ip Kamera(herhangi bir cihaza bağlanmadan
 sadece modeme bağlantılı olan ve internet üzerinden izlenebilen kameralar)sistemleri şeklinde kurulabilir.
Bütün cihazlar için gereken ortak özellik ADSL hattrınızın sabit IP numarasına sahip olmasıdır.</p>
</div>



<section id="network">
<div class="page-header">
 <h3>Network Çözümleri</h3>       
     </div>
 <p>Kurumsal ve bireysel bazda network çözümleri sunan firmamız her türlü ağ kurulumu
  için gereksinimlerini tespit edip kesin çözümlerin üretilmesi ve tüm donanımlarıyla ihtiyacınıza en uygun
  Ağ sistemlerinin kurulması, devamlılığının
   sağlanması, sorun tespit ve çözümü konusunda deneyimli 
   kadrosuyla hizmete hazır durumdadır.</p>
<div class="page-header">       
     </div>
           <div  class="row-fluid">
            <div class="span5">
			<ul><h4>Bir bilgisayar ağının temel faydaları</h4><br>
						<li>Yazılım ve donanım paylaşımı</li>
						<li>Maliyet avantajı</li>
						<li>Haberleşme maliyetlerinin azalması</li>
						<li>Daha Kolay Yönetilebilirlik </li>
						<li>Veri yedeklemesi ve güvenliği</li>
						<li>Merkezi noktadan yönetilebilirlik</li><br>
					</ul>
 </div>

<div class="span7">
              <img class="img-square"  src="resim/hizmetler/n.jpg">
             </div>
             </div>
 <div class="page-header">       
           <div  class="row-fluid">
            <div class="span5">
            <ul><h3>Yerel Ağ Çözümleri</h3>
					    <li>Yapısal Kablolama</li>
					    <li>Hub, switch, router, access point, güvenlik duvarı kurulum ve yapılandırmaları</li>
					    <li>Ağ güvenliği için gerekli donanımsal ve yazılımsal desteğin sağlanması</li>
					    <li>Ağdaki problemlerin tesbiti ve çözüme kavuşturulması</li>
					</ul>       
     </div>
           <div  class="row-fluid">
            <div class="span5">            
            <ul><h3>Geniş Alan Ağ Çözümleri</h3>
					    <li>Router kurulum ve yapılandırması</li>
					    <li>Yerel ağ(LAN) ve geniş alan ağları(WAN) arasında güvenli uzak bağlantıların 
					    sağlanması, (side to side ve client to side VPN)</li>
					    <li>Leased Line</li>
					    <li>Frame Relay</li>
					    <li>Metro Ethernet</li>
					    <li>ADSL</li><br>
					</ul>
          </div>
        </section>

 <section id="servis">
          <div class="page-header">
            <h3>Teknik Servis</h3>
          </div>
          <p>
Evinizde veya işyerinizde bilgisayarınızla ilgili donanımsal veya yazılımsal 
 herhangi bir problem oluştu ve çözemediyseniz, ne yapacağım şimdi diye düşünmenize gerek yok. Yapmanız 
 gereken sadece bize ulaşmak. Donanım ve yazılım problemlerinizi telefon, uzak bağlantı ve yerinde yardım 
 ile çözüme kavuşturuyoruz. Kurumsal ve bireysel olarak teknik anlamda çözümler sunan firmamız uzman kadrosuyla destek vermektedir

Dünya Mühendislik Samsun'da Exper Uzman Servis Noktası olarak hizmet vermektedir. Notebooklarınızın her türlü
 tamiri, anakart, ekran, klavye vb, konusunda uzman teknik servisimiz tarafından garantili olarak gerçekleştirilmektedir.
  Hertürlü bilgisayar ve yan ürünleri ile ilgili problemimiz için teknik servisimizle görüşebilirsiniz. Servisimizde notebook, notebook
   ekranı, notebook anakart, notebook klavye, masaüstü 
bilgisayar, monitör, lcd, yazıcı, ve diğer bilgisayar ekipmanlarının tamiri, veri - data kurtarma işlemleri yapılmaktadır.</p>
</section>


<section id="mservis">
<div class="page-header">
 <h3>Masaüstü Bilgisayar Teknik Servisi</h3>       
     </div>
           <div  class="row-fluid">
            <div class="span4">

 <p>Dünya Bilgisayar Samsun'da, bilgisayarlarınızda ve çevre ürünlerinde oluşabilecek
  arızalarınızla ilgili teknik destek alabileceğiniz bir numaralı seçiminizdir.

Her türlü bilgisayar, bilgisayar çevre elemanları, monitör, lcd ekran, yazıcı, klavye, laptop, notebook, masaüstü
 pc, arıza tespiti, tamiri, formatlama işlemleri, program kurulumu, program temini, bilgi - veri - data kurtarma işlemleri 
uzman servis ekibimiz tarafından en kısa sürede en kaliteli şekilde gerçekleştirilmektedir.</p>
</div>

<div class="span6">
              <img class="img-square"  src="resim/hizmetler/b1.png">
             </div>
          </div>
        </section>
        
<section id="fotokopi">
<div class="page-header">
 <h3>Yazıcı-Printer ve Fotokopi Teknik Servisi</h3>       
     </div>
           <div  class="row-fluid">
            <div class="span4">

 <p>Dünya Bilgisayar Samsun'da her türlü yazıcı, printer satışı, arıza tespiti,
  onarımı, kartuş dolumu, toner dolumu, kartuş ve toner tedariği, yazıcı sarf malzemeleri tedariği
   işlemlerini gerçekleştirmektedir.
   <ul>
					<li>Yazıcı arıza tespit</li>
					<li>Yazıcı Tamiri</li>
					<li>Kartuş Toner satış - dolum</li>
					<li>Yedek Parçaları</li>
					<li>Sarf Malzemeleri</li>

				</ul> </p>
</div>

<div class="span7">
              <img class="img-square"  src="resim/hizmetler/b2.png">
             </div>
          </div>
        </section>



<section id="dizüstü">
<div class="page-header">
 <h3>Laptop Masaüstü  Bilgisayarlar ve Tablet-PC Teknik Servisi</h3>       
     </div>
           <div  class="row-fluid">
            <div class="span4">
			<img class="img-square"  src="resim/hizmetler/b3.JPG"></div>
 			<div class="span4">
			<img class="img-square"  src="resim/hizmetler/b4.JPG"></div>
			<div class="span4">
			<img class="img-square"  src="resim/hizmetler/h.JPG"></div>
          </div>
<div class="page-header">
          </div>
                
 <p>Laptop Masaüstü  Bilgisayarlar ve Tablet-PC için LCD 
 Ekranlar / Klavyeler / HDD / CDRW / Ram / Ekran Kartları / Menteşeler / Kasalar / Tuş Değişimi / ve Diğerleri </p>
 </section>
      <section id="dizüstü">
<div class="page-header">       
           <div  class="row-fluid">
            <div class="span5">
            	<ul>
				<li>Samsun Laptop Servisi</li>
				<li>Samsun Laptop Şarj Cihazları.( Adaptör )</li>
				<li>Samsun Laptop Bataryaları. ( Pil )</li>
				<li>Samsun Laptop Klavye Tamiri ve Değişimi.</li>
				<li>Samsun Laptop LCD Ekran Tamiri ve Değişimi.</li>
				</ul>     
     </div>
           <div  class="row-fluid">
            <div class="span5">            
            <ul><li>Samsun Laptop Yedek Parçaları.</li>
				<li>Samsun Printer (yazıcı) Tamir Servisi</li>
				<li>Samsun Windows ve driver yükleme.</li>
				<li>Samsun Data (bilgi) kurtarma. Virüs temizleme.</li>
				<li>Samsun Kurumsal bakım anlaşmaları.</li>
			</ul>
			</div>
          </div>
          <div class="page-header">       
           <div  class="row-fluid">
            <div class="span6">
			<img class="img-square"  src="resim/hizmetler/a1.JPG"></div>
 			<div class="span6">
			<img class="img-square"  src="resim/hizmetler/a2.JPG">
			</div>
			</div>
        </section>
<section id="mservis">
<div class="page-header">
 <h3>Laptop Masaüstü Tablet-PC Bilgisayarlarda Oluşabilecek Arızalar</h3>       
     </div>
           <div  class="row-fluid">
            <div class="span5">
            <ul>
				<li>Laptop Anakart Sıvı Teması ( Dökülmesi ).</li>
				<li>Laptopun Bios Yazılımı Silinmesi Bozulması.</li>
				<li>Laptopun Lcd Ekran Kırılması, Ölü Pixel Beyaz Nokta Oluşumu.</li>
				<li>Laptopun Lcd Ekran İnverter Isınması Bozulması.</li>
				<li>Optik Okuyucu, Optik Sürücü Cdrom, Dvdrom,Okumaması Bozulması Dvd Combo,Dvd-Writter, Dvdrw Multidrive Okuma, Yazmama Arızası.
			</li></ul></div>
	<div class="span5">
              <img class="img-square"  src="resim/hizmetler/a3.jpg">
             </div>
          </div>

          <div  class="row-fluid">
            <div class="span5">            
            <ul><li>Samsun Laptop Yedek Parçaları.</li>
				<li>Samsun Printer (yazıcı) Tamir Servisi</li>
				<li>Samsun Windows ve driver yükleme.</li>
				<li>Samsun Data (bilgi) kurtarma. Virüs temizleme.</li>
				<li>Samsun Kurumsal bakım anlaşmaları.</li>       
        		<li>Laptopun Lcd Kablo Kırılması, Bozulması.</li>
				<li>Laptopun Adaptörünün Bozulması( Temassızlık Yapması ).</li>
				<li>Notebook ekran Menteşe Kırılması.</li>
				<li>Laptop Ekran Kartı Arızası ( Yanması ).</li>
				<li>Notebook Ekran Işığı Az.</li>
				<li>Notebook Bilgisayar İşlemci Arızası.</li>
				<li>Bilgisayar Ram veya Rem Yuvasının Bozulması Ve Değişimi.</li>
				<li>Bilgisayar Harddsik Anakart Bağlantı Noktasının Arızalanması.</li>
				<li>Bilgisayar Harddisk Değişimi.</li>
				<li>Usb, Paralel, Lpt Port, Network, Lan, Ses,Portların. Arızalanması.</li>
				<li>Bilgisayarın Şifresi Kırılması, Bios Şifresi Kırılması, Şifre Çözülmesi.( Şifrenin Unutulması )</li>
				<li>Laptop Bilgisayar Format Atmak - Formatlamak.</li>
				<li>Laptop Driverlerinin Yüklenmesi, Güncellenmesi.</li>
			</ul>  
          </div>
<div  class="row-fluid">
            <div class="span5">       
          <ul>		
				<li>Harddisk Yedekleme, Notebook Bilgi Yedekleme.</li>
				<li>Notebook İşletim Sistemi Kurulumu</li>
				<li>Notebook Sürücülerinin Yüklenmesi, Güncellenmesi.</li>
				<li>Laptopun Üzerine Su, Çay, Kahve Vb Gibi Sıvı Madde Dökülmesi.</li>
				<li>Notebook Hiç Açılmıyor.</li>
				<li>Laptop Bilgisayar Hiç Çalışmıyor.</li>
				<li>Bilgisayardan ses geliyor ( Açılmıyor veya Ekran Siyah ).</li>
				<li>Notebook Ekran Işığı Zayıf.</li>
				<li>Notebook Bilgisayar Reset Atıyor.</li>
				<li>Notebook Bilgisayarın Ekranında Çizgiler Var.</li>
				<li>Laptop Lcd Ekranında Çizgiler Oluştu.</li>
				<li>Notebook Bilgisayar Harddiski Bozuldu.</li>
				<li>Notebook Bilgisayardaki Bilgilerim Silindi.</li>
				<li>Notebook Bilgisayardan Bilgi Kurtarma Data Kurtarma.</li>
				<li>Notebook Bilgisayara Format Atmak.</li>
				<li>Bilgisayarın İşletim Sistemi Açılmıyor.</li>
				<li>Notebook - Laptop Bilgisayarın Ekranı Karardı.</li>
				<li>Laptopun Klavyesine su döküldü.</li>
				<li>Notebook Ekran Arızası.( Ekranda Görüntü Yok Veya Ekranda Belirsiz Silik Görüntü Var</li>
			</ul>
          </div>
          </div>
          </div>
          </section>
       </div>
      </div>
      </div>
      </div>    
      
      
      <jsp:include page="footer.jsp"></jsp:include>
      
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