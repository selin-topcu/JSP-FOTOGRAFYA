<%@ page language="java" import="java.io.*,java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="true" %>
<!DOCTYPE HTML>

<html>
	<head>
	
	<script>
function dogrula() {
    var x = document.forms["Form1"]["KAD"].value;
    if (x == null || x == "") {
        alert("Kullanıcı adını girmediniz!");
        return false;
    }
}
</script>
 
		<title>Kayıt Ol</title>
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
									<center><b>Kayıt Olma Formu</b></center><br>
									<form NAME="Form1" method="post" action="kullanici_kayit.jsp">
										<div class="row gtr-uniform">
											<div class="col-12 col-12-xsmall">
												<input type="text" name="AD" id="AD" value="" placeholder="İsim" required/>
											</div>
											<div class="col-12 col-12-xsmall">
												<input type="text" name="SOYAD" id="SOYAD" value="" placeholder="Soyisim" required/>
											</div>
											<div class="col-12 col-12-xsmall">
												<input type="text" name="KAD" id="KAD" value="" placeholder="Kullanıcı Adı" required/>
											</div>
											<div class="col-12 col-12-xsmall">
												<input type="password" name="SIFRE" id="SIFRE" value="" placeholder="Şifre" required/>
											</div>
											
											<div class="col-12">
												<ul class="actions">
													<li><input  type="submit" value="Kayıt Ol" class="primary" />
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