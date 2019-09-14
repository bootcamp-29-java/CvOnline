<%@page import="models.Religion"%>
<%@page import="models.Marital"%>
<%@page import="models.Employee"%>
<%@page import="models.EmployeeRole"%>
<%@page import="java.util.List"%>
<%
//    List<EmployeeRole> logSession = (List<EmployeeRole>) session.getAttribute("sessionlogin");
//    Employee e = new Employee();
    List<Employee> employees = (List<Employee>) session.getAttribute("employees");
    List<Marital> maritals = (List<Marital>) session.getAttribute("maritals");
    List<Religion> religions = (List<Religion>) session.getAttribute("religions");

    String employeeId = (String) session.getAttribute("employeeId");
    String status = (String) session.getAttribute("status");
    String asd = (String) session.getAttribute("cv_status");
    
    out.print(status);
    if (employees == null) {
        response.sendRedirect("personaldataservlet");
    } else {
%>
<!--Personal Data-->
<div class="card">
    <div class="card-body">
        <h3 class="text-center">Personal Data</h3><br>
        <form method="POST" action="">
            <div class="row">
                <div class="col-md-3">
                    <div class="form-row">
                        <div class="form-group">
                            <div class="form-group col-md">
                                <label for="inputID">Photo Profile</label>
                                <div class="custom-file">
                                    <label class="custom-file-label" for="customFileLang">Choose File</label>
                                    <input type="file" class="custom-file-input" id="customFileLang" lang="en" accept="image/*">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md">
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <label for="inputID">ID</label>
                            <input type="text" class="form-control" id="inputID" value="<%=employeeId%>" readonly>
                        </div>
                        <div class="form-group col-md">
                            <label for="inputEmail">Email</label>
                            <input type="email" class="form-control" id="inputEmail" placeholder="example@mail.com" value="" required>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputFirstName">First Name</label>
                            <input type="text" class="form-control" id="inputFirstName" placeholder="First Name" value="">
                        </div>
                        <div class="form-group col-md">
                            <label for="inputLastName">Last Name</label>
                            <input type="text" class="form-control" id="inputLastName" placeholder="Last Name" value="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputBirthPlace">Birth Place</label>
                            <input type="text" class="form-control" id="inputBirthPlace" placeholder="Birth Place" value="">
                        </div>
                        <div class="form-group col-md">
                            <label for="inputBirthDate">Birth Date</label>
                            <input type="date" class="form-control" id="inputBirthDate">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputReligion">Religion</label>
                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                <%
                                    for (Religion r : religions) {
                                %>
                                <option value="<%=r.getId()%>">
                                    <%=r.getName()%>
                                </option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                        <div class="form-group col-md">
                            <label for="inputID">Marital Status</label>
                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                <%
                                    for (Marital marital : maritals) {
                                %>
                                <option value="<%=marital.getId()%>">
                                    <%=marital.getName()%>
                                </option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-2">
                            <label for="inputGender">Gender :</label>
                        </div>
                        <div class="form-group col-md-2">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="gender-male" name="gender" class="custom-control-input">
                                <label class="custom-control-label" for="gender-male">Male</label>
                            </div>
                        </div>
                        <div class="form-group col-md-2">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="gender-female" name="gender" class="custom-control-input">
                                <label class="custom-control-label" for="gender-female">Female</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-2">
                            <label for="inputNationality">Nationality :</label>
                        </div>
                        <div class="form-group col-md-2">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="nationality-wni" name="nationality" class="custom-control-input">
                                <label class="custom-control-label" for="nationality-wni">WNI</label>
                            </div>
                        </div>
                        <div class="form-group col-md-2">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="nationality-wna" name="nationality" class="custom-control-input">
                                <label class="custom-control-label" for="nationality-wna">WNA</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </form>
    </div>
</div>
<!--End Personal Data-->

<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<%
    }

    session.removeAttribute("status");
    session.removeAttribute("employees");
    session.removeAttribute("maritals");
    session.removeAttribute("religions");
//        session.removeAttribute("employeeId");
%>