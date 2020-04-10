
		<%@ page language="java" import="java.io.*,java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="true" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Giriş yap</title>
		<link rel="shortcut icon" href="images/giris.ico" />
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<%@ include file="menu.jsp" %>

							<article id="main">
						
						<section class="wrapper style5">
							<div class="inner">

								<section>
									<center><b>Giriş Yap</b></center><br>
									<form method="post" action="admin_giris.jsp">
										<div class="row gtr-uniform">
											<div class="col-6 col-12-xsmall">
												<input type="text" name="A_KAD"  value="" placeholder="Admin Adı" required/>
											</div>
											<div class="col-6 col-12-xsmall">
												<input type="password" name="A_SIFRE"  value="" placeholder="Admin Şifre" required/>
											</div>
											
											
											<div class="col-12">
												<ul class="actions">
													<li><input  type="submit" value="GİRİŞ YAP" class="primary" />
												</ul>
											</div>
										</div>
									</form>
								</section>
								</div>
						</section>
					</article>
							<!-- Footer -->
					<%@ include file="footer.jsp" %>