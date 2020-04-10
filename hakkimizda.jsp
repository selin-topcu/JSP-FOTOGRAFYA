<%@ page language="java" import="java.io.*,java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="true" %>
<!DOCTYPE HTML>

<html>
	<head>
	<script language='JavaScript1.2'>  

function disableselect(e){
return false
} 
function reEnable(){
return true
} 
//if IE4+
document.onselectstart=new Function (&quot;return false&quot;) 
//if NS6
if (window.sidebar){
document.onmousedown=disableselect
document.onclick=reEnable
}
</script> 
               <script language='JavaScript'>curPage=1;
document.oncontextmenu = function(){return false}
if(document.layers) {
   window.captureEvents(Event.MOUSEDOWN);
   window.onmousedown = function(e){
       if(e.target==document)return false;
   }
}
else {
   document.onmousedown = function(){return false}
}</script>
		<title>Hakkımızda </title>
		<link rel="shortcut icon" href="images/gazi.ico" />
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
		<article id="main">
			<div id="page-wrapper">

				<%@ include file="menu.jsp" %>

						</section>
						
						
						<section class="wrapper style5">
							<div class="inner">
							<section>
									<header>
									
									
									
									</header>
									
									<center><h2>Hakkımızda</h2></center>
									<p><span class="image left"><img src="images/gazi.png" alt="" /></span>Merhaba <font color="red"><%=session.getAttribute("KAD") %></font>! Ben Selin Dayıoğlu(170535004).</p><p>Gazi Üniversitesi Bilgisayar ve Öğretim Teknolojileri Eğitimi Bölümü 2. sınıfta okuyorum.Yapmakta olduğum sitenin kod kaynağını İnternet Tabanlı Programlama dersin de değerli hocam Sayın <font color="blue"><a href="https://websitem.gazi.edu.tr/site/samiacar">Yrd. Doç. Dr. Sami Acar</a></font> 'dan aldım.Aynı zaman da bir çok forum sitesinden faydalandım.İçerik için kullanılan bilgiler telif hakkına sahiptir.Okumak için <font color="blue"><a href="telif.jsp">tıklayın</a></font> .</p>
									<p>Site de yayınlamış olduğumuz dersler kullanıcılarımızın  büyük bir farkındalıkla ortaya koyabileceği fotoğraflar çekebilmelerine yardımıcı olmaktır.Zengin içeriklerimizi takipte kalın,görüş ve önerileriniz için mail adresemize yazabilirsiniz,göndermek için <font color="blue"><a href="iletisim.jsp">tıklayın</a></font>. </p>
								
									</section>
							</div>
						</section>
					</article>
							<!-- Footer -->
					<%@ include file="footer.jsp" %>