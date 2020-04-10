<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
session.setAttribute("KAD", null);
session.setAttribute("A_KAD", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>