<%@ page import ="java.sql.*" %>
<%@ page language="java" import="java.io.*,java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="true" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Admin</title>
		<link rel="shortcut icon" href="images/giris.ico" />
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

	 
						
								<%
									if ((session.getAttribute("A_KAD") == null) || (session.getAttribute("A_KAD") == "")) {
								%><section class="wrapper style5">
							<div class="inner">
							<section>
									
									<header>
									Yetki sahibi değilsiniz<br/>
									<a href="admin.jsp"><font color='red'>Giriş Yap</font></a>
									</header>
									<br><br><br><br><br><br><br>
									</section>
							</div>
						</section>
					</article>
					
					
								<%} else {
								%>
								<section class="wrapper style5">
							<div class="inner">
							<section>
									
									<header>
										<button><a href="guvenli_cikis.jsp">GÜVENLİ ÇIKIŞ</button></a>
										<br><br><br>
								<p>
								Admin panelin de kullanıcı bilgilerine ulaşabilir,güncelleme,silme ve ekleme işlemleri yapabilirsiniz <font color="red"><%=session.getAttribute("A_KAD") %></font>!</p>

									</header>
									</section>
									<section>
									<br><br>
									<h5>KULLANICI TABLOSU</h5>
									<div class="table-wrapper">
										<table>
											<thead>
												<tr>
													<th>KULLANICI ADI</th>
													<th>ADI</th>
													<th>SOYADI</th>
													<th>ŞİFRESİ</th>
												</tr>
												
											</thead>
											<tbody>
											<%

												  Connection conn = null;
												  Statement st = null;
												  ResultSet rs = null;

												  try {
														Class.forName("com.mysql.jdbc.Driver").newInstance();
														String dbUrl = "jdbc:mysql://localhost/170535004";
														conn = DriverManager.getConnection(dbUrl, "root", "acar2353");

														st = conn.createStatement();
														rs = st.executeQuery("SELECT * FROM kullanici");
														%>
														<tr><% 
														while(rs.next()) {%>
														<td><% out.println( rs.getString("KAD") );%></td>
														<td><% out.println( rs.getString("AD") );%></td>
														<td><% out.println( rs.getString("SOYAD") );%></td>
														<td><% out.println( rs.getString("SIFRE") );%></td>

														</tr><%
														}

													} 
													catch (Exception ex) {
														ex.printStackTrace();
														out.println("HATA OLUSTU !");
													} 
													finally {
													  if (rs != null) rs.close();
													  if (st != null) st.close();
													  if (conn != null) conn.close();
													}

												%>
												
											</tbody>
											
										</table>
									</div>
									</section>
							</div>
						<div>
						<!-- Kayıt ekleme kodu -->
					<section>
									<center>Kayıt Ekle</center><br>
									<form  method="post" action="kullanici_kayit.jsp">
										<div class="row gtr-uniform" align="center" margin="auto">
											
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div>
												<input type="text" name="AD" id="AD" value="" placeholder="İsim" required/>
											</div>
											<div>
												<input type="text" name="SOYAD" id="SOYAD" value="" placeholder="Soyisim" required/>
											</div>
											<div >
												<input type="text" name="KAD" id="KAD" value="" placeholder="Kullanıcı Adı" required/>
											</div>
											<div >
												<input type="password" name="SIFRE" id="SIFRE" value="" placeholder="Şifre" required/>
											</div>
											
											<div >
												<ul class="actions">
													<li><input  type="submit" value="Kayıt Ekle" class="primary" />
												</ul>
											</div>
										</div>
									</form>
									
								</section>
								<!-- Kayıt silme kodu -->
									
							<section>
									<center>Kayıt Sil</center><br>
									<form NAME="Form1" method="post" action="kullanici_sil.jsp">
										<div class="row gtr-uniform" align="center" margin="auto">
											
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div>
												<input type="text" name="KAD" id="KAD" value="" placeholder="İsim" required/>
											</div>
											
											<div >
												<ul class="actions">
													<li><input  name="delete" type="submit" value="Kayıt SİL" class="primary" />
												</ul>
											</div>
										</div>
									</form>
									
								</section>
								
								<section>
									<center>Şifre Güncelleme</center><br>
									<form NAME="Form1" method="post" action="kullanici_guncelle.jsp">
										<div class="row gtr-uniform" align="center" margin="auto">
											
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div>
												<input type="text" name="KAD" id="KAD" value="" placeholder="Kullanıcı Adı" required/>
											</div>
											<div>
												<input type="text" name="SIFRE" id="SIFRE" value="" placeholder="Yeni Şifreyi Gir" required/>
											</div>
											
											<div >
												<ul class="actions">
													<li><input  name="update" type="submit" value="ŞİFREYİ GÜNCELLE" class="primary" />
												</ul>
											</div>
										</div>
									</form>
									
								</section>
			</article>
									
					
						
					
<%
  }
%>
	<!-- Footer -->
					<%@ include file="footer.jsp" %>