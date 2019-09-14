<%-- 
    Document   : assessment
    Created on : Sep 11, 2019, 8:37:48 AM
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
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <title>Assessment</title>
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
            <div class="row justify-content-center align-items-center">
                <div class="card">
                    <div class="card-body">
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
                                    <option selected>Male</option>
                                    <option>Female</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Nationality</label>
                                <select class="form-control">
                                    <option selected>WNI</option>
                                    <option>WNA</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea class="form-control" rows="5" id="addres"></textarea>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Batch</label>
                                    <input type="text" class="form-control" name="" placeholder="Batch Number">
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Class</label>
                                    <select class="form-control">
                                        <option selected>Java</option>
                                        <option>.NET</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Assessment</label>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label>Sylabus</label>
                                        <select class="form-control">
                                            <option selected>Java</option>
                                            <option>.NET</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>Lesson</label>
                                        <select class="form-control">
                                            <option selected>Java</option>
                                            <option>.NET</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="input-group-btn">
                                    <button class="btn btn-success" type="button"  onclick="education_fields();">
                                        <span class="glyphicon glyphicon-plus" aria-hidden="true">Add</span>
                                    </button>
                                </div>
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
    <script>
        var room = 1;
        function education_fields() {
            room++;
            var objTo = document.getElementById('education_fields')
            var divtest = document.createElement("div");
            divtest.setAttribute("class", "form-group removeclass" + room);
            var rdiv = 'removeclass' + room;
            divtest.innerHTML = '<div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="Schoolname" name="Schoolname[]" value="" placeholder="School name"></div></div><div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="Major" name="Major[]" value="" placeholder="Major"></div></div><div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="Degree" name="Degree[]" value="" placeholder="Degree"></div></div><div class="col-sm-3 nopadding"><div class="form-group"><div class="input-group"> <select class="form-control" id="educationDate" name="educationDate[]"><option value="">Date</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option> </select><div class="input-group-btn"> <button class="btn btn-danger" type="button" onclick="remove_education_fields(' + room + ');"> <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> </button></div></div></div></div><div class="clear"></div>';

            objTo.appendChild(divtest)
        }
        function remove_education_fields(rid) {
            $('.removeclass' + rid).remove();
        }
    </script>
</html>
