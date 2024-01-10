<%-- 
    Document   : editkomentar
    Created on : Jul 4, 2023, 9:15:20 PM
    Author     : laiqah
--%>

<%@page import="Model.KomentarModel" %>
<%@page import="Connection.Koneksi" %>
<%@page import="Controller.KomentarController" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    KomentarController kc = new KomentarController(Koneksi.getCon());
    KomentarModel km = kc.getSingleComment(id);
    request.setAttribute("editComment", km);
%>

<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <title>Edit Book Data</title>
        <style>
            .inner{
                position: relative;
                margin: 0 auto;
                width: 650px;
                display: block;
                padding: 50px 0;
            }
            h3{
                text-align: center;
                border-bottom: 2px solid midnightblue;
                margin-bottom: 20px;
            }
            nav li a{
                font-size: 25px;
                font-weight: 500;
            }
            a{
                color: #fff;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div  class="container-fluid">
            <nav class="navbar navbar-light">
                <a class="navbar-brand">Komentar</a>
                <ul class="navbar-nav ml-auto mt-3 mx-5">
                    <li class="nav-item">
                        <a class="nav-link active" href="komentar.jsp">Komentar</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="inner">
            <div class=" container">
                <div class="row">
                    <div class="col-12">
                        <h3>
                            Edit Comments Details</h3>
                        <form action="EditKomentarServlet" method="post">
                            <div class="form-group">
                                <label>Komen ID</label>
                                <input class="form-control" name="id" value="${editComment.id}" required>
                            </div>
                            <div class="form-group">
                                <label>Nama</label>
                                <input class="form-control" name="nama" value="${editComment.nama}" required>
                            </div>
                            <div class="form-group">
                                <label>Komentar</label>
                                <input class="form-control" name="komentar" value="${editComment.komentar}" required>
                            </div>
                            <div class="form-group" >

                                <label>Bintang</label>
                                <select id="inputState" class="form-control" name="bintang" required>
                                    <option selected disabled>Pilih Bintang</option>
                                    <option value="Bintang 5">Bintang 5</option>
                                    <option value="Bintang 4">Bintang 4</option>
                                    <option value="Bintang 3">Bintang 3</option>
                                    <option value="Bintang 2">Bintang 2</option>
                                    <option value="Bintang 1">Bintang 1</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button  class="btn btn-primary"><a href="komentar.jsp">Cancel</a></button>
                           
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    </body>
</html>
