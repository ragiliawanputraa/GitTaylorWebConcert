<%-- 
    Document   : album
    Created on : Jul 6, 2023, 5:08:37 PM
    Author     : laiqah
--%>

<%@page import="java.util.List"%>
<%@page import="Model.AlbumModel"%>
<%@page import="Controller.AlbumController"%>
<%@page import="Connection.Koneksi"%>
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
    <link rel="stylesheet" href="./css/album.css">

    <!-- ini title -->
    <title>Album Taylor Swift</title>

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
        <li class="active"><a href="">Albums</a></li>
        <li><a href="./komunitas.jsp">Link Community</a></li>
        <li><a href="./about.jsp">About Us</a></li>
        <li><a href ="./komentar.jsp">Comment</a></li>
       </ul>

        </nav>
            </aside>

            <!-- Ini bagian sebelah kanan -->
            <!-- class="twitter" cuma nama untuk si section biar bisa di edit2 -->
            <section class="beranda">
              <a class="menux">☰</a>

                      <% 
        // Membuat instance AlbumController
        AlbumController albumController = new AlbumController(Koneksi.getCon());

        // Mengambil daftar album dari controller
        List<AlbumModel> albums = albumController.getTheAlbum();

        // Menampilkan data album dalam loop
        for (AlbumModel album : albums) {
            String judulAlbum = album.getjudulalbum();
            String deskripsiAlbum = album.getdeskripsialbum();
            String tahunRilis = album.gettahunrilis();
            String linkAlbum = album.getlinkalbum();
        %>

        <div class="container3">
        <div class="kotak-kartu">
        <div class="info-box">
            <h2><%= judulAlbum %></h2>
            <p><%= deskripsiAlbum %></p>
            <p>Released: <%= tahunRilis %></p>
            <a href="<%= linkAlbum %>">Link Album</a>
        </div>
        </div>
        </div>
        <%
        }
        %>

            </section>

          </main>

          <!-- MAIN SCRIPT -->
          <script src="./javastring/main.js"></script>

          <!-- INI SCRIPT BUAT SLICK CAROUSSEL NYA BIAR AKTIF -->
          <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

    </body>
</html>
