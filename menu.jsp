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
		
											<li><a href="guvenli_cikis.jsp">GÜVENLİ ÇIKIŞ</a></li>
		<% } %>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>
					
		