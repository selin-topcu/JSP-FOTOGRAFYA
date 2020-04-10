<%@ page import ="java.sql.*" %>
<%@ page language="java" import="java.io.*,java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="true" %>
<!DOCTYPE HTML>

<html>
<head>
<script language="javascript" src="http://ic.sitekodlari.com/yukaricik1.js"></script>
<title>Dersler</title>
<link rel="shortcut icon" href="images/ders.ico" />
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>

<body class="is-preload">

<!-- Page Wrapper -->
<article id="main">
<div id="page-wrapper">
<%@ include file="menu_ders.jsp" %>
<section class="wrapper style5">
  <div class="inner">
    <section>
      <header>
        <%
									if ((session.getAttribute("KAD") == null) || (session.getAttribute("KAD") == "") ) {
								%>
        Derslere girmek için giriş yapınız !<br/>
        <a href="giris.jsp"><font color='red'>Giriş Yap</font></a> </header>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
    </section>
  </div>
</section>
</article>
<%} else {
								%>
Dersleri menuden takip edebilirsiniz <font color="red"><%=session.getAttribute("KAD") %></font>!
</header>
</section>

<a name="1">
<section>
  <hr/>
  <h2>FOTOĞRAF ÇEKİM TEKNİKLERİ</h2>
  <div class="box alt">
    <div class="row gtr-50 gtr-uniform">
      <div class="col-12"><span class="image fit"><img src="images/1.png" alt="" /></span></div>
    </div>
  </div>
  
  <b>1/3 kuralı (4 altın nokta kuralı)</b>
  <p>Fotoğraftaki ana objeyi,kadrajın tam ortasına yerleştirmek ilgiyi ve dikkati azaltır.</p>
  <div class="row gtr-50 gtr-uniform">
    <div class="col-6"><span class="image fit"><img src="images/2.jpg" alt="" /></span></div>
    <div class="col-6"><span class="image fit"><img src="images/3.jpg" alt="" /></span></div>
  </div>
  <a name="2">
  <hr/>
  
  <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> <b>Denge</b>
      <div class="col-12"><span class="image fit"><img src="images/4.jpeg" alt="" /></span></div>
    </div>
  </div>
  <p>Kadrajda boşluk ve dengesizlik hissini engellemek.</p>
  <a name="3">
  <hr/>
  <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> <b>Çizgiler - Hatlar</b>
      <div class="col-12"><span class="image fit"><img src="images/5.jpeg" alt="" /></span></div>
    </div>
  </div>
  <p>Gözler, kendiliğinden
    fotoğraftaki çizgileri, hatları
    takip eder.</p>
    <a name="4">
  <hr/>
  <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> <b>Simetri</b>
      <div class="col-12"><span class="image fit"><img src="images/6.jpg" alt="" /></span></div>
    </div>
  </div>
  
  <p>Kadrajda doğal ya da
    insan yapısı simetrileri
    öne çıkarmak ilgi
    uyandırır.</p>
  <p>Bunun tam tersi,
    simetrinin bilerek
    bozulduğu fotoğraflar da
    fotoğrafa ayrı bir güç
    katabilir.</p>
    <a name="5">
  <hr/>
  <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> <b>Bakış Açısı</b>
      <div class="col-12"><span class="image fit"><img src="images/7.jpg" alt="" /></span></div>
    </div>
  </div>
  <p>Bakış açısı
    fotoğrafın etkisine
    ya güç katar ya da
    sıradanlaştırır.</p>
    <a name="6">
  <hr/>
  <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> <b>Derinlik</b>
      <div class="col-12"><span class="image fit"><img src="images/8.jpg" alt="" /></span></div>
    </div>
  </div>
  <p>Ön plan, orta
    plan ve
    arka planda
    belli objelerin
    olması derinlik
    yaratır</p>
    <a name="7">
  <hr/>
  <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> <b>Çerçeveleme (Kadraj)</b>
      <div class="col-12"><span class="image fit"><img src="images/9.jpeg" alt="" /></span></div>
    </div>
  </div>
  <p>Ortamdaki doğal
    çerçeveyi
    (ağaçlar, binalar,
    duvar delikleri,
    vs) kullanmak
    etkileyici bir kare
    yaratabilir.</p>
    <a name="8">
  <hr/>
  <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> <b>Arka Plan</b>
      <div class="col-12"><span class="image fit"><img src="images/11.jpg" alt="" /></span></div>
    </div>
  </div>
  <p>Karışık arka
    fondan
    kaçınmak</p>
    <a name="9">
  <hr/>
  <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> <b>Dolgu Flaşı</b>
      <div class="col-12"><span class="image fit"><img src="images/10.jpeg" alt="" /></span></div>
    </div>
  </div>
  <p>Flaş gün ışığında da faydalıdır:</p>
  <ul>
    <li>Şapka, ağaç gölgesi</li>
    <li>Kuvvetli arka ışık</li>
    <a name="10">
  </ul>
  <hr/>
  <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> <b>Portre çekimi</b>
      <div class="col-12"><span class="image fit"><img src="images/12.jpg" alt="" /></span></div>
    </div>
  </div>
  <p>Doğal bir portre
    fotoğrafı çekmek
    için modelin
    habersiz olduğu
    (poz vermediği)
    anlar en idealidir.</p>
  <ul>
    <li>Doğal ve yandan
      gelen ışığı tercih
      edin.</li>
    <li>Pencere ışığı
      portre çekimleri
      için idealdir.</li>
  </ul>
  <a name="11">
  <hr/>
  <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> <b>Flaş mesafesi</b>
      <div class="col-12"><span class="image fit"><img src="images/13.jpg" alt="" /></span></div>
    </div>
  </div>
  <p>Kamera flaşının ne kadar mesafeye
kadar etkili olduğunu bilin.</p>
 <a name="12">
  <hr/>
   <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> <b>Grup Fotoğrafları</b>
      <div class="col-12"><span class="image fit"><img src="images/14.jpg" alt="" /></span></div>
    </div>
  </div>
  <p>Kenarlarda gereksiz
boşluk bırakmayın.Yaklaşın.Sıradan olmayan
komposizyonlar
düşünün.</p>
  
     <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> 
      <div class="col-12"><span class="image fit"><img src="images/15.jpg" alt="" /></span></div>
    </div>
  </div>
  <p>Kişileri, kadraja daha
dengeli dağılacak şekilde
pozisyonlandırın.</p>
 
     <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> 
      <div class="col-12"><span class="image fit"><img src="images/16.webp" alt="" /></span></div>
    </div>
  </div>
  <p>Kalabalık grupları yüksekten
görebileceğiniz kompozisyonlar
oluşturmaya çalışın.</p>
    <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> 
      <div class="col-12"><span class="image fit"><img src="images/17.jpg" alt="" /></span></div>
    </div>
  </div>
  <p>Yaratıcı olun,
dijital teknoloji ve
yazılımlar sınırsız
olanaklarını
deneyin.</p>
 <a name="13">
  <hr/>
   <div class="box alt">
    <div class="row gtr-50 gtr-uniform"> <b>Manzara çekimleri</b>
      <div class="col-12"><span class="image fit"><img src="images/18.jpg" alt="" /></span></div>
    </div>
  </div>
  <p>Gün doğumundan sonraki
ve gün batımına doğru
olan saatleri tercih edin.Ufuk çizgisini fotoğrafın
ortasında değil, yukarıya
ya da aşağıya yakın tutun.</p>
  <hr/>
  <p>Derslerimizin devamı için takipte kalın.Görüş ve önerileriniz için <font color="blue"><a href="iletisim.jsp">tıklayın</a></font>.</p>
  
  </div>
  
</section>
</article>
<%
  }
%>
<!-- Footer -->
<%@ include file="footer.jsp" %>
