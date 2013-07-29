<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Le styles -->
    <link href="bootstrap-master/docs/assets/css/bootstrap.css" rel="stylesheet">
	 <link href="bootstrap-master/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">  
    <link href="css/footer.css" rel="stylesheet">
     <script type="text/javascript" src="/bootstrap-master/js/bootstrap-alert.js"></script>   
    

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
<body  style="background-color:#eeeeee"">
<jsp:include page="navbar.jsp"></jsp:include>

    
    	<center>   	
     	<table ><tr>
      	<td><img src="resim/anasayfa/yenilogo.png" ></td>
      	</tr>
      	</table></center>

     
      	
    <!-- Carousel
    ================================================== -->
    <div class=container>
    <div id="myCarousel" class="carousel slide">
      <div class="carousel-inner">
        <div class="item active">
          <img src="resim/anasayfa/1.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h2 style="color:#B5CEDD">Network Çözümleri</h2>
              <p class="lead">Kurumsal ve bireysel bazda network çözümler sunan firmamız her türlü network kurulumu,
               işletimi,sorun tespiti ve çözümü yapılmaktadır.</p>
              
            </div>
          </div>
        </div>
        <div class="item">
          <img src="resim/anasayfa/2.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h2 style="color:#B5CEDD">Marka & OEM Satış</h2>
              <p class="lead">Firmamız Exper bilgisayarların satış ve satış sonrası teknik hizmetlerini yüklenmekte
               aynı zamanda oem ürünler ve sarf malzemeler noktasında da ihtiyaçlarınızı kaşılamaktadır.</p>
             
            </div>
          </div>
        </div>
        <div class="item">
          <img src="resim/anasayfa/3.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h2 style="color:#B5DDB8">Güvenlik</h2>
              <p class="lead">Firmamız olarak işyerleri, apartman ve özel mülkleriniz için her türlü kamera ve alarm sistemlerinin
              kurulumu, teknik destek ve kullanım konusunda bilgilendirme hizmetleri yapılmaktadır.</p>
            </div>
          </div>
        </div>
      </div>
     
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div><!-- /.carousel -->
    
    
    <form>
    <fieldset>
    <legend><center><h4>DÜNYA BİLGİSAYAR ÇÖZÜMLERİ</h4></center></legend>
  	</fieldset>
    </form>

     <div class="hero-unit" style="background-color: #CAC8C8">
      <table  style="background-color:#CAC8C8;width:100%"><tr><td>
          <img class="img-rounded"  src="resim/anasayfa/web.png">
        </td>
        <td>
          <img class="img-rounded"  src="resim/anasayfa/marka.png">
        </td>  
        <td>
          <img class="img-rounded" src="resim/anasayfa/kamera.png">
        </td>  
		<td>
          <img class="img-rounded"  src="resim/anasayfa/network.png">	
        </td>  
        </tr>
      </table>  
	  <br>
      <!-- Main hero unit for a primary marketing message or call to action -->
     
      	<table ><tr><td>Dünya Mühendislik <strong>Exper Uzman Servis Noktası</strong> olarak hizmet vermektedir. Notebooklarınızın her türlü tamiri, anakart, ekran, klavye vb, konusunda uzman teknik servisimiz tarafından garantili olarak gerçekleştirilmektedir.
					Hertürlü bilgisayar ve yan ürünleri ile ilgili problemimiz için teknik servisimizle görüşebilirsiniz. 
					Servisimizde notebook, notebook ekranı, notebook anakart, notebook klavye, masaüstü bilgisayar, monitör, lcd, yazıcı,  ve diğer bilgisayar ekipmanlarının tamiri, veri - data kurtarma işlemleri yapılmaktadır.<a href="./hizmetler.html">devamı</a></td></tr>
			   <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
		
		</table>
		<table><tr><td>	   
			   		<div class="span5">
			   		  <img src="resim/anasayfa/notebook-tamiri.png">
			   		</div>
					</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
			   		<div class="span4">
			  		  <img src="resim/anasayfa/uzman-servis.png">
			       </div>
			 
			       </td>
			   </tr>    		
		</table>        
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