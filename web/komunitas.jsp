<%-- 
    Document   : komunitas
    Created on : Jun 6, 2023, 5:14:26 PM
    Author     : laiqah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon"
          href="https://clipground.com/images/taylor-swift-logo-png-8.png" type="image/x-icon">

        <!-- custom css kalian ada di direktori ini -->
        <link rel="stylesheet" href="./css/styles.css">
        <link rel="stylesheet" href="./css/komunitas.css">

        <!-- ini title -->
        <title>Swifties</title>

        <!-- ini link css buat manggil slick carousel nya dan make tema bawaan nya slick -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick-theme.min.css">

        <!-- SLICK BUTUH JQUERY BUAT RUNNING, Jadi ini script yang dibutuhin buat nge running slick-carrousel (sebenernya 1 aja cukup sih) -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        <main class="main">

        <!-- BAGIAN Sidebar -->
        <aside class="sidebar">
          <nav class="nav">

            <!-- INI BAGIAN LOGO -->
            <div class="logofr">
              <!--<img class="lightstick" src="lightstick.png">-->
              <img class="logo" src="https://i.pinimg.com/564x/69/6a/9e/696a9e1a088e722fbafee71cd6e923aa.jpg">
            </div>

            <!-- INI BAGIAN LINK NAVIGASI -->
            <ul>
            <!-- kelas active digunain buat ngasih efek nyala -->
            <li><a href="./adminlogin.jsp">Login</a></li>
            <li><a href="./index.jsp">Home</a></li>
            <li><a href="./profil.jsp">Profile</a></li>
            <li><a href="./album.jsp">Albums</a></li>
            <li class="active"><a href="">Link Community</a></li>
            <li><a href="./about.jsp">About Us</a></li>
            <li><a href ="./komentar.jsp">Comment</a></li>
            </ul>

          </nav>
        </aside>

        <!-- Ini bagian sebelah kanan -->
        <!-- class="twitter" cuma nama untuk si section biar bisa di edit2 -->
        <section class="beranda">
          <a class="menux">☰</a>

          <div class="container4">

            <div class="kontainer__konten">
              <p class="catatan">To get the latest update, you can click the link below...</p>

              <div class="linkts">

                <p class="judul"> Link Official Account Taylor Swift </p>

                <div class="kartu__grid">
                  <a target="_blank" href="https://youtube.com/@TaylorSwift" class="kartu kartu__projects youtube">
                    <img src="./image/youtube.png" alt="Tunggu Sebentar Yaaa~">
                    <p class="xparaf">Youtube</p>
                    <p class="note">Watch the official music video of TAYLOR SWIFT here!</p>
                  </a>

                  <a target="_blank" href="https://www.taylorswift.com/" class="kartu kartu__projects vlive">
                    <img src="./image/tsmidnight.jpg" alt="Tunggu Sebentar Yaaa~">
                    <p class="xparaf">TS Midnight</p>
                    <p class="note">Want to see more comprehensive information about TAYLOR SWIFT? This is the place!!</p>
                  </a>
                </div>

                <div class="kartu__grid">

                  <a target="_blank" href="https://instagram.com/taylorswift?igshid=Y2IzZGU1MTFhOQ==" class="kartu kartu__projects instagram">
                    <img src="./image/instagram.png" alt="Tunggu Sebentar Yaaa~">
                    <p class="xparaf">Instagram</p>
                    <p class="note">Here you can see Taylor Swift's posts from her official Instagram account!</p>
                  </a>

                  <a target="_blank" href="https://twitter.com/taylorswift13" class="kartu kartu__projects twitter">
                    <img src="./image/twitter.png" alt="Tunggu Sebentar Yaaa~">
                    <p class="xparaf">Twitter</p>
                    <p class="note">Click this link if you want to see the latest tweet from TAYLOR SWIFT!</p>
                  </a>
                </div>


              </div>

              <div class="linkfans">

                <p class="judul"> Link Account Fans Taylor Swift </p>

                <div class="kartu__grid">
                  <a target="_blank" href="https://twitter.com/SwiftNYC" class="kartu kartu__projects base">
                    <img src="./image/twitter.png" alt="Tunggu Sebentar Yaaa~">
                    <p class="xparaf">Base Fans</p>
                    <p class="note">Want to know the latest information about TAYLOR SWIFT Concert? This is the place!</p>
                  </a>
                    
                  <a target="_blank" href="https://line.me/ti/g2/-DVPESaPi0iEsQxudzj1AQp_0OXpwiu_vKmJZQ?utm_source=invitation&utm_medium=link_copy&utm_campaign=default" class="kartu kartu__projects instagram">
                    <img src="./image/instagram.png" alt="Tunggu Sebentar Yaaa~">
                    <p class="xparaf">Instagram Fanbase</p>
                    <p class="note">This Instagram account is created as a source of information about Taylor Swift events.</p>
                  </a>

                </div>

            </div>

          </div>

        </section>
      </main>

      <!-- MAIN SCRIPT -->
      <script src="./javastring/main.js"></script>

      <!-- INI SCRIPT BUAT SLICK CAROUSSEL NYA BIAR AKTIF -->
      <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

    </body>
</html>
