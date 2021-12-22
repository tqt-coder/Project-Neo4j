<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
   <link rel="stylesheet" href="<c:url value="/assets/css/login.css"/>" >
   <script type="text/javascript" src="<c:url value="/assets/js/login1.js"/>" ></script>
</head>
<body>
   
    <div class="container">
        <div class="card card-container">
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <h5 type="text" style="display:block;color:red" class="infor-from-controller" ><c:out value="${loginFail}"/></h5>
           
            <form name="f1" action = "/Resume_Neo4j/Login" method = "POST" class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="email"  id ="user" name  = "gmail" class="form-control" placeholder="Nhập Gmail" required autofocus>
                <input type="password" id ="pass" name  = "pass" class="form-control" placeholder="Nhập password" required>
                
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Đăng nhập</button>
            </form><!-- /form -->
            
         	<a href="/Resume_Neo4j//views/register.jsp" class="m-t-10px" type="submit">Đăng ký</a>
        </div>
    </div>
  
    <script>
    
    </script>
</body>
</html>

    