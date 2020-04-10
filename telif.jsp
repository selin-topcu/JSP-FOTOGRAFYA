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
		<title>Telif Uyarısı</title>
		<link rel="shortcut icon" href="images/copyright.ico" />
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
									
										<h4>&copy; TELİF HAKKI UYARISI !</h4>
										<p><% out.println("IP numaranız: " + request.getRemoteAddr()); 
									
								   Locale locale = request.getLocale();
								   String language = locale.getLanguage();
								   String country_short = locale.getCountry();
								   String country_long = locale.getDisplayCountry();

								   out.println("Dil kodu:" + language  + " Ülke Kodu:" + country_short+" Ülke Adı:" + country_long   );%></p>
									
									</header>
									
									<p>5846 Sayılı Fikir ve Sanat Eserlerini Koruma Kanunu Gereği (Site Telif Hakları) Konusunda Yasal Uyarı; FOTOGRAFYA Web sitesinin isim hakları, içeriği, şablonu, tasarımı ve site içindeki tüm dokümanlara ait hakları saklıdır. Site içerisinde yer alan sayfalarda aksi belirtilmediği sürece, site içindeki hiçbir doküman, sayfa, grafik, tasarım unsuru ve diğer unsurlar izin alınmaksızın kopyalanamaz, başka yere taşınamaz, alıntı yapılamaz, internet üzerinde veya her ne şekilde olursa olsun yayınlanamaz ve kullanılamaz (arama motorlarının dizinleri için kullandıkları geçici bellek kayıtlarından alınmış olsalar dahi). Sitemizi ziyaret eden misafirlerimiz, sitenin telif hakkı konusunda firmamızın tüm talep ve açıklamalarını kabul ettiklerini beyan ve taahhüt ederler. Hakları saklı tutulmuş eserler, sahiplerinin muvafakati olmadan hiç bir suretle çoğaltılamaz, alıntı yapılamaz, yayınlanamaz, başka bir yerde kullanılamaz !</p>
									<br><br><br><br><br><br>
									</section>
							</div>
						</section>
					</article>
							<!-- Footer -->
					<%@ include file="footer.jsp" %>