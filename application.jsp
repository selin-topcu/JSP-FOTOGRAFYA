
<%
  Integer hitsCount = (Integer)application.getAttribute("hitCounter");
  if( hitsCount ==null || hitsCount == 0 )
  {
    hitsCount = 1;
  }else{
    hitsCount += 1;
  }
  application.setAttribute("hitCounter", hitsCount);
%>

<i>Toplam ziyaret:<%= hitsCount%></i>
