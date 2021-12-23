<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Home</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="<c:url value="/assets/css/home.css"/>" rel="stylesheet">
 	<link href="<c:url value="/assets/css/home2.css"/>" rel="stylesheet">


</head>

<body>

    <header id="header" class="fixed-top ">
        <div class="container d-flex align-items-center justify-content-between">
            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="#hero">Trang chủ</a></li>
                    <li><a class="nav-link scrollto" href="/Resume_Neo4j/views/viewCV.jsp">CV mẫu</a></li>
                    <li><a class="nav-link scrollto" href="/Resume_Neo4j/views/inputCV.jsp">Tạo CV</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->

        </div>
    </header>
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero">
        <div class="hero-container">
            <h3>Welcome to <strong><c:out value="${usergmail}" /></strong></h3>
           
            <h1>We're Creative Agency</h1>
            <h2>We are team of talented designers making websites with Bootstrap</h2>
            <a href="#about" class="btn-get-started scrollto">Create CV</a>
        </div>
    </section>

    <script type="text/javascript" src="<c:url value="/assets/js/home.js"/>"></script>

</body>

</html>