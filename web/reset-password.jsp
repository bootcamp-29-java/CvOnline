<%-- 
    Document   : reset-password
    Created on : Sep 11, 2019, 8:09:24 AM
    Author     : Wehijin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            body{
                background: url("http://cdn.backgroundhost.com/backgrounds/subtlepatterns/arches.png");
            }

            .absolute-center {
                margin: auto;
                position: absolute;
                top: 0; left: 0; bottom: 0; right: 0;
            }

            .absolute-center.is-responsive {
                width: 50%; 
                height: 50%;
                min-width: 200px;
                max-width: 300px;
                padding: 0px;
            }
        </style>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <!--inisialisasi session-->
        <%
            String token = (String) session.getAttribute("token");
        %>
        <!--inisialisasi session-->

        <!-- Just an image -->
        <nav class="navbar navbar-light bg-light">
            <a class="navbar-brand" href="#">

                <img src="https://getbootstrap.com/" width="30" height="30" alt="">
            </a>
        </nav>

        <div class="container">
            <div class="absolute-center is-responsive">
                <div class="row">
                    <div class="col-md">
                        <form action="verifikasiservlet" method="POST" id="loginForm" autocomplete="off">
                            <div class="form-group">
                                <h3 class="text-center">Reset Password</h3>
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="password" minlength="6" id="newPassword" name='newPassword' placeholder="New Password" required/>
                                <input class="form-control" name="token" id="token" type="hidden" value="">
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="password" minlength="6" id="confirmPass" name='confirmPass' placeholder="Confirmation New Password" required/>     
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block">Reset Password</button>
                                <hr>
                            </div>
                        </form>    
                    </div>  
                </div>    
            </div>
        </div>
    </body>
</html>
