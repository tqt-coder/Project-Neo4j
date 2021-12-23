<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="<c:url value="/assets/css/register.css" />" rel="stylesheet">


</head>

<body>

    <div class="around-loading">
        <div align="center" class="fond">
            <div class="contener_general">
                <div class="contener_mixte">
                    <div class="ballcolor ball_1">&nbsp;</div>
                </div>
                <div class="contener_mixte">
                    <div class="ballcolor ball_2">&nbsp;</div>
                </div>
                <div class="contener_mixte">
                    <div class="ballcolor ball_3">&nbsp;</div>
                </div>
                <div class="contener_mixte">
                    <div class="ballcolor ball_4">&nbsp;</div>
                </div>
            </div>
        </div>


    </div>

    <div class="bg-wapper">
        <form class="wrapper bg-white mt-sm-5 form-edit__book" action="/Resume_Neo4j/Register" method="post">
            <div class="image">
                <img src="https://www.google.com/photos/about/static/images/photo-books/hero_book.png" class="w-100" style="border-top-left-radius: .5rem; border-top-right-radius: .5rem;" alt="Sample photo" height="200px">
            </div>
            <h4 class="pb-4 border-bottom">Đăng ký thành viên</h4>
            
            <div class="py-2">
                <div class="row py-2">
                    <div class="col-md-12">
                        <label for="HovaTen">Username</label>
                        <input type="text" name="HovaTen" class="bg-light form-control" placeholder="Nhập họ và tên" required>
                    </div>
                </div>
               
                <div class="row py-2">
                    <div class="col-md-12">
                        <label for="email">Tài khoản Gmail</label>
                        <input type="email" name="Gmail" placeholder="Nhập địa chỉ gmail" required class="bg-light form-control">
                    </div>

                </div>
                <div class="row py-2">
                    <div class="col-md-12">
                        <label for="HovaTen">Mật khẩu</label>
                        <input type="password" placeholder="Nhập mật khẩu" class="bg-light form-control" name="PassWord" required>
                    </div>
                </div>
                <div class="row py-2">
                    <div class="col-md-12">
                        <label for="HovaTen">Xác nhận mật khẩu</label>
                        <input type="password" placeholder="Nhập mật khẩu xác nhận" class="bg-light form-control" required>
                    </div>
                </div>
            </div>
            
            <div class="py-3 pb-4 border-bottom">
                <button class="btn btn-primary mr-3">Đăng ký</button>
                <button type="reset" class="btn border button">Đặt lại</button>
            </div>
            <div class="d-sm-flex align-items-center pt-3" id="deactivate">

                <div class="ml-auto"> <a href="/Resume_Neo4j//views/login.jsp" class="btn danger">Đăng nhập</a> </div>
            </div>


        </form>


        <script>

            var btnReset = document.querySelector('.btn-default__reset');
            var formEdit = document.querySelector('.form-edit__book');
            var spinner = document.querySelector('.around-loading');
            formEdit.onsubmit = (e) => {
                event.preventDefault();
                spinner.classList.add('sk-chase-background__appear')
                setTimeout(() => {
                    formEdit.submit();
                }, 5000)
            }



        </script>
    </div>
</body>
</html>