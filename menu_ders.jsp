<%@ page language="java" import="java.io.*,java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="true" %>
				<!-- MENU Header -->
					<header id="header">
						<h1><a href="index.jsp">Fotografya</a></h1>
						<nav id="nav">
							<ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
										       <%
												if ((session.getAttribute("KAD") != null) && (session.getAttribute("KAD") != "")) {
												%>
											<li> 
												<p>Merhaba! <%=session.getAttribute("KAD") %> </p>
											</li>
												<% } %>
											<li><a href="index.jsp">Anasayfa</a></li>
											<li><a href="hakkimizda.jsp">Hakkımızda</a></li>
											<li><a href="iletisim.jsp">İLETİŞİM</a></li>
											<li><a href="dersler.jsp">Dersler</a></li>
											
											<%
		if ((session.getAttribute("KAD") == null) || (session.getAttribute("KAD") == "")) { %>
		
		
											<li><a href="giris.jsp">GİRİŞ YAP</a></li>
											<li><a href="kayit.jsp">KAYIT OL</a></li>
											
 		<% } else { %>
											<li><a href="#1">-->1/3 Kuralı</a></li>
											<li><a href="#2">-->Denge</a></li>
											<li><a href="#3">-->Çİzgİler - Hatlar</a></li>
											<li><a href="#4">-->Sİmetrİ</a></li>
											<li><a href="#5">-->Bakış Açısı</a></li>
											<li><a href="#6">-->Derİnlİk</a></li>
											<li><a href="#7">-->Çerçeveleme (Kadraj)</a></li>
											<li><a href="#8">-->Arka Plan</a></li>
											<li><a href="#9">-->Dolgu Flaşı</a></li>
											<li><a href="#10">-->Portre çekİmİ</a></li>
											<li><a href="#11">-->Flaş mesafesi</a></li>
											<li><a href="#12">-->Grup Fotoğrafları</a></li>
											<li><a href="#13">-->Manzara çekİmlerİ</a></li>
											<li><a href="guvenli_cikis.jsp">GÜVENLİ ÇIKIŞ</a></li>
		<% } %>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>
					
		