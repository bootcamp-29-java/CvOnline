<%-- 
    Document   : placement
    Created on : Sep 11, 2019, 8:37:57 AM
    Author     : Wehijin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <title>Placement</title>
    </head>
    <body>
        <!--NavBar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="curriculum-vitae.jsp">CV</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="assessment.jsp">Assessment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="placement.jsp">Placement</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="asset-management.jsp">Asset Management</a>
                    </li>
                </ul>
            </div>
        </nav>  
        <!--Employee-->
        <div class="container-fluid">
            <div class="card">
                <div class="card-body">
                    <div class="row justify-content-center align-items-center">

                        <form>
                            <div class="form-group col-md-4">
                                <label>ID</label>
                                <input type="text" class="form-control" id="inputAddress" placeholder="19045" name="id"disabled>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>First Name</label>
                                    <input type="text" class="form-control" placeholder="First Name" name="" required="">
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Last Name</label>
                                    <input type="text" class="form-control" placeholder="Last Name" name="" required="   ">
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" id="inputAddress" name="" placeholder="yourmail@example.com">
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Birth Place</label>
                                    <input type="text" class="form-control" name="" placeholder="Birth Place">
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Birth Date</label>
                                    <input type="date" class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Gender</label>
                                <select class="form-control">
                                    <option selected>WNI</option>
                                    <option>WNA</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Religion</label>
                                <select class="form-control">
                                    <option selected></option>
                                    <option></option>
                                    <option></option>
                                    <option></option>
                                    <option></option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" name="" placeholder="Your Phone Number">
                            </div>
                            <div class="form-row">



                            </div>
                            <div>
                                <button type="submit" class="btn btn-primary">Confirm</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
