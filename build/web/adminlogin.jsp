<%-- 
    Document   : login
    Created on : Jul 5, 2023, 1:29:38 AM
    Author     : ASUS
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

    <link rel="shortcut icon"
      href="https://clipground.com/images/taylor-swift-logo-png-8.png" type="image/x-icon">
<!DOCTYPE html>
<html>
    <style>
        
/* Ini reset CSS (pake tanda * itu artinya semua class,id,tag dipilih) */
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

/* Body styles */
body {
    background-color: #141414;
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    padding: 20px;
}

/* Container styles */
.container {
    min-width: 360px;
    margin-top: auto;
    margin-bottom: auto;
    position: relative; /* Menambahkan position relative pada container */
    z-index: 2; /* Menambahkan z-index agar form login berada di lapisan tampilan yang lebih tinggi */
}

.content {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 40px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* Background styles */
.background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(255, 255, 255, 0.9);
    background-size: cover;
    background-position: center;
    filter: brightness(0.4);
    z-index: -1;
}

/* Header styles */
h1 {
    font-size: 24px;
    margin-bottom: 20px;
    text-align: center;
}

/* Form styles */
form {
    text-align: left;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input[type="email"],
input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    border-radius: 4px;
    border: none;
    margin-bottom: 10px;
}

input[type="submit"] {
    background-color: #9400d3;
    color: #ffffff;
    padding: 10px 20px;
    border-radius: 4px;
    border: none;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #6a0080;
}

/* Link styles */
p {
    color: #141414;
    margin-top: 2rem;
}

a {
    color: #9400d3;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}


    </style>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
</head>
<%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
%>
<script>
    alert("<%=errorMessage%>");
</script>
<%
    }
%>

<body>
    

<div class="background"></div>
<div class="container">
    <div class="content">
        <h1>ADMIN LOGIN</h1>
        <form action="login" method="post">
            <div class="form-group">
                <label for="username">Username:</label> <input type="text"
                                                               name="username" id="username" placeholder="username"
                                                               required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label> <input type="password"
                                                               name="password" id="password" placeholder="password"
                                                               required>
            </div>
            <input type="submit" value="login">
        </form>
    </div>
</div>

</body>
</html>