<%-- 
    Document   : komentar
    Created on : Jul 5, 2023, 7:59:26 PM
    Author     : laiqah
--%>

<%@page import="java.util.List"%>
<%@page import="Model.KomentarModel"%>
<%@page import="Connection.Koneksi"%>
<%@page import="Controller.KomentarController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%
    KomentarController commentData = new KomentarController(Koneksi.getCon());
    List<KomentarModel> comment = commentData.getTheComment();
    request.setAttribute("COMMENT_LIST", comment);
%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon"
              href="https://clipground.com/images/taylor-swift-logo-png-8.png"
              type="image/x-icon">

        <!-- custom css kalian ada di direktori ini -->
        <link rel="stylesheet" href="./css/styles.css">
        <link rel="stylesheet" href="./css/komentar.css">

        <!-- ini title -->
        <title>Komentar</title>

        <!-- ini link css buat manggil slick carousel nya dan make tema bawaan nya slick -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick-theme.min.css">

        <!-- SLICK BUTUH JQUERY BUAT RUNNING, Jadi ini script yang dibutuhin buat nge running slick-carrousel (sebenernya 1 aja cukup sih) -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    
    <property name="java.compilerargs" value="-Xlint:-options"/>
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
                    <li><a href="./adminalbumpage2.jsp">Albums</a></li>
                    <li class="active"><a href="">Comment</a></li>
                </ul>


            </nav>
        </aside>

        <!-- Ini bagian sebelah kanan -->
        <!-- class="twitter" cuma nama untuk si section biar bisa di edit2 -->
        <section class="beranda">
            <a class="menux">☰</a>

            <div class="container-fluid">
                <nav class="navbar navbar-light">
                    <form class="form-inline">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </nav>
            </div>
            <div class="container">
                <div class="inner">
                    <div class="row">
                        </div>
                        <div class="col-md-9">
                            <h3>
                                Comments from all of you! ♡♡♡</h3>
                            <table class="table">
                                <thead class="bg-light">
                                    <tr>
                                        <th scope="col">Name</th>
                                        <th scope="col">Comments</th>
                                        <th scope="col">Stars</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="tempComment" items="${COMMENT_LIST}">
                                        <tr>
                                            <td>${tempComment.nama}</td>
                                            <td>${tempComment.komentar}</td>
                                            <td>${tempComment.bintang}</td>
                                            <td><a href="editkomentar.jsp?id=${tempComment.id}">Edit</a> 
                                                <a href="HapusKomentarServlet?id=${tempComment.id}">Delete</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


        </section>

    </main>

    <!-- MAIN SCRIPT -->
    <script src="./javascript/main.js"></script>

    <!-- INI SCRIPT BUAT SLICK CAROUSSEL NYA BIAR AKTIF -->
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>


</html>
