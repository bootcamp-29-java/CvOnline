<%-- 
    Document   : login
    Created on : Sep 11, 2019, 8:08:31 AM
    Author     : Wehijin
--%>

<%@page import="java.util.List"%>
<%@page import="models.EmployeeRole"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        String status = (String) session.getAttribute("status");
        List<EmployeeRole> username = (List<EmployeeRole>) session.getAttribute("sessionlogin");
//        out.print(status);
        if (username != null) {
            response.sendRedirect("super-admin-control.jsp");
        } else {
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file='addons/framework.jsp' %>
    </head>
    <body class="login">
        <!-- Login Content -->
        <div class="row" style="height:100vh">
            <div class="d-sm-none d-md-block col-md-8"></div>
            <div class="col-md bg-dark">
                <div class="container">
                    <div class="row justify-content-center align-items-center" style="height:100vh">
                        <form id="loginForm" action="loginservlet" method="POST" autocomplete="on">
                            <div class="form-group">
                                <h3 class="text-center text-white">Sign In</h3><hr>
                                <div class="form-group">
                                    <input class="form-control form-control-lg" placeholder="Email" type="email" name="email" required>
                                </div>
                                <div class="form-group">
                                    <input class="form-control form-control-lg" placeholder="Password" type="password" name="password" required>
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-light btn-lg btn-block" type="submit">Login</button>
                                </div>
                                <div class="form-group ">
                                    <div class="d-flex justify-content-center">
                                        <!-- Forgot password -->
                                        <a class="text-white" href="" data-toggle="modal" data-target="#forgotPassword">Forgot password</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Login Content -->

        <!-- Forgot Password -->
        <div class="modal fade" id="forgotPassword" tabindex="-1" role="dialog" aria-labelledby="forgotPassword" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Request Reset Password</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="" method="POST">
                            <input class="form-control form-control-lg" placeholder="Email" type="email" name="" required>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Send Request</button>
                    </div>
                        </form>
                </div>
            </div>
        </div>
        <!-- End Forgot Password -->

        <script>$('.alert').alert();</script>
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <%
            if (status != null) {
                if (status.equalsIgnoreCase("Cek Email Untuk Verifikasi Akun !") || status.equalsIgnoreCase("Email Reset Password Telah Dikirimkan!") || status.equalsIgnoreCase("Password Sudah Dirubah") || status.equalsIgnoreCase("Akun Anda Telah Aktif")) {
                    out.println("<script type=\"text/javascript\">;");
                    out.println("swal(\"Good job!\", \"" + status + "\", \"success\");");
                    out.println("</script>;");
                } else {
                    out.println("<script type=\"text/javascript\">;");
                    out.println("swal(\"Oops!\", \"" + status + "\", \"error\");");
                    out.println("</script>;");
                }
            }
        %>
    </body>
    <%
        }
        session.removeAttribute("status");
    %>
</html>