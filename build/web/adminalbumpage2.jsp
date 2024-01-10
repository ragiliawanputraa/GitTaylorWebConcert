<%-- 
    Document   : albumm
    Created on : Jul 8, 2023, 11:18:02 PM
    Author     : ASUS
--%>

<%@page import="java.util.List"%>
<%@page import="Connection.Koneksi"%>
<%@page import="Controller.AlbumController" %>
<%@page import="Model.AlbumModel" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="shortcut icon"
      href="https://clipground.com/images/taylor-swift-logo-png-8.png" type="image/x-icon">
    <!-- custom css kalian ada di direktori ini -->
    <link rel="stylesheet" href="./css/styles.css">
    <link rel="stylesheet" href="./css/album2.css">
    <title>Album Taylor Swift</title>
</head>
<body>
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
                <li class="active"><a href="">Albums</a></li>
                <li><a href="./admincommentpage.jsp">Comment</a></li>  
            </ul>
        </nav>
    </aside>

    <%
    // Membuat instance AlbumController
    AlbumController albumController = new AlbumController(Koneksi.getCon());

    // Mengambil daftar album dari controller
    List<AlbumModel> albums = albumController.getTheAlbum();
    %>

    <%-- Menampilkan data album dalam loop --%>
    <% for (AlbumModel album : albums) { %>
    <div class="info-box">
        <h2><%= album.getjudulalbum() %></h2>
        <p><%= album.getdeskripsialbum() %></p>
        <p>Tahun Rilis: <%= album.gettahunrilis() %></p>
        <a href="<%= album.getlinkalbum() %>">Link Album</a>
        <form action="HapusAlbumServlet" method="post"> <!-- Menambahkan form delete -->
            <input type="hidden" name="idalbum" value="<%= album.getId() %>">
            <button type="submit" class="delete-button">Delete</button> <!-- Tombol delete -->
        </form>
    </div>
    <% } %>

    <div class="inner">
        <div class="row">
            <div class="col-md-3">
                <h3>Tambahkan Album</h3>
                <form action="TambahAlbumServlet" method="post">
                    <div class="form-group">
                        <label>Judul Album</label>
                        <input class="form-control" name="judul" placeholder="Masukkan judul album" required>
                    </div>
                    <div class="form-group">
                        <label>Deskripsi Album</label>
                        <input class="form-control" name="deskripsi" placeholder="Masukan deskripsi album" required>
                    </div>
                    <div class="form-group">
                        <label>Tahun Rilis</label>
                        <input class="form-control" name="tahun" placeholder="Masukan tahun rilis album" required>
                    </div>
                    <div class="form-group">
                        <label>Link Album</label>
                        <input class="form-control" name="link" placeholder="Masukan link album" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-primary">Reset</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
