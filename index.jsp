<%@ page language="java" import="java.io.*,java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="true" %>
<!DOCTYPE HTML>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html"; charset=utf-8">
		<title>Fotografya</title>
		<link rel="shortcut icon" href="images/logo.ico" />
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="landing is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">
<!--menu header-->
			<%@ include file="menu.jsp" %>
				<!-- Banner -->
					<section id="banner">
						<div class="inner">
							<h2>Fotografya</h2><br>
							
							<i>Fotografya.com Sitemize Hoşgeldiniz</i><%
								if ((session.getAttribute("KAD") != null) && (session.getAttribute("KAD") != "")) {
								%>

								<%=session.getAttribute("KAD") %>

								<% } %><br><br><br><br>
						
							<br>
							<%
		if ((session.getAttribute("KAD") == null) || (session.getAttribute("KAD") == "")) { %>
							
							<ul class="actions special">
								
								<li><a href="giris.jsp" class="button ">GİRİŞ Yap</a></li>
								<li><a href="kayit.jsp"s class="button ">Kayıt ol</a></li>
							</ul>
							<% } %>
							<%@ include file="application.jsp"%>
						</div>
						<a href="#one" class="more scrolly">Daha Fazla</a>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style1 special">
						<div class="inner">
							<header class="major">
								
								<p>Bu site de,konuya ve ortama uygun fotoğraf çekebilmeyi öğreneceksiniz.</p>
							</header>
						
						</div>
					</section>

				<!-- Two -->
					<section id="two" class="wrapper alt style2">
						<section class="spotlight">
							<div class="image"><img src="images/b_2.jpeg" alt="" /></div><div class="content">
								
								<p>Çekilen fotoğrafları teknik açıdan analiz edebileceksiniz.</p>
							</div>
						</section>
						<section class="spotlight">
							<div class="image"><img src="images/b_3.jpg" alt="" /></div><div class="content">
								
								<p>Fotoğrafçılıktaki tek kural aslında hiçbir kural olmamasıdır.</p>
								
							</div>
						</section>
						
					</section>

				<!-- Three -->
					<section id="three" class="wrapper style3 special">
						<div class="inner">
							<header class="major">
								<p>Hala derslere başlamadınız mı?</p>
								
							</header>
							<ul class="actions special">
								
								<li><a href="dersler.jsp" class="button ">Dersler</a></li>
							</ul>
						</div>
					</section>

				

				<!-- Footer -->
					<%@ include file="footer.jsp" %>