<%-- 
    Document   : cv-online
    Created on : Sep 14, 2019, 11:17:11 PM
    Author     : Wehijin
--%>

<%@page import="models.Category"%>
<%@page import="models.Skill"%>
<%@page import="models.Language"%>
<%@page import="models.Employee"%>
<%@page import="models.Religion"%>
<%@page import="models.Marital"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Cache-Control", "no-store");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
//        List<EmployeeRole> logSession = (List<EmployeeRole>) session.getAttribute("sessionlogin");
//        Employee e = new Employee();
        List<Employee> employees = (List<Employee>) session.getAttribute("employees");
        String employeeId = (String) session.getAttribute("nik");
        out.println(employeeId);

        List<Marital> maritals = (List<Marital>) session.getAttribute("maritals");
        List<Religion> religions = (List<Religion>) session.getAttribute("religions");
        List<Language> languages = (List<Language>) session.getAttribute("languages");
        List<Category> categorys = (List<Category>) session.getAttribute("categorys");
        List<Skill> skills = (List<Skill>) session.getAttribute("skills");

        String status = (String) session.getAttribute("status1");
        out.print(status);

        if (employees == null) {
            response.sendRedirect("cvservlet");
        } else {
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CV Online</title>

        <%@include file='addons/framework.jsp' %>
    </head>
    <body class="hasNavbar">
        <!--Navigation Menu-->
        <%@include file='addons/navbar.jsp' %>
        <!-- End Navigation Menu-->

        <!--CV Content-->
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <!--Personal Data-->
                    <div id="cv-1" class="frm">
                        <h2>Step 1 of 11 - Personal Data</h2><hr>
                        <form method="POST" action="personaldataservlet">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-row">
                                        <div class="form-group">
                                            <div class="form-group col-md">
                                                <label for="inputPhoto">Photo Profile</label>
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
                                            <input type="text" class="form-control" name="inputID" id="inputID" value="<%=employeeId%>" readonly>
                                        </div>
                                        <div class="form-group col-md">
                                            <label for="inputEmail">Email</label>
                                            <input type="email" class="form-control" name="inputEmail" id="inputEmail" placeholder="example@mail.com" value="" required>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputFirstName">First Name</label>
                                            <input type="text" class="form-control" name="inputFirstName" id="inputFirstName" placeholder="First Name" value="" required>
                                        </div>
                                        <div class="form-group col-md">
                                            <label for="inputLastName">Last Name</label>
                                            <input type="text" class="form-control" name="inputLastName" id="inputLastName" placeholder="Last Name" value="" required>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputBirthPlace">Birth Place</label>
                                            <input type="text" class="form-control" name="inputBirthPlace" id="inputBirthPlace" placeholder="Birth Place" value="" required>
                                        </div>
                                        <div class="form-group col-md">
                                            <label for="inputBirthDate">Birth Date</label>
                                            <input type="date" class="form-control" name="inputBirthDate" id="inputBirthDate" required>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputReligion">Religion</label>
                                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="religion">
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
                                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="marital">
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
                                                <input type="radio" id="gender-male" name="gender" value="M" class="custom-control-input">
                                                <label class="custom-control-label" for="gender-male">Male</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="gender-female" name="gender" value="F" class="custom-control-input">
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
                                                <input type="radio" id="nationality-wni" name="nationality" value="wni" class="custom-control-input">
                                                <label class="custom-control-label" for="nationality-wni">WNI</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="nationality-wna" name="nationality" value="wna" class="custom-control-input">
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
                        <button class="btn btn-primary open-cv-2" type="button">Next <span class="fa fa-arrow-right"></span></button>
                    </div>
                    <!--End Personal Data-->


                    <!--Language-->
                    <div id="cv-2" class="frm">
                        <h2>Step 2 of 11 - Language</h2><hr>
                        <form method="POST" action="languageservlet">
                            <div class="control-group-language">
                                <input type="hidden" name="inputID" id="inputID" value="<%=employeeId%>" readonly>
                                <div class="form-row">
                                    <div class="form-group input-group col-md-4">
                                        <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="languageId">
                                            <%
                                                for (Language l : languages) {
                                            %>
                                            <option value="<%=l.getId()%>">
                                                <%=l.getName()%>
                                            </option>
                                            <%
                                                }
                                            %>
                                        </select>
                                        <!--<input type="text" name="addmore[]" class="form-control" id="inputLanguage" placeholder="Ex: Bahasa Indonesia" value="">-->
                                        <div class="input-group-btn">
                                            <button class="btn btn-danger remove-language" type="button">Remove</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group-language">
                                <div class="form-row">
                                    <div class="copy-language after-add-language d-none">
                                        <div class="form-group control-group input-group col-md-4">
                                            <input type="text" name="addmore[]" class="form-control" id="inputLanguage" placeholder="Ex: Bahasa Indonesia" value="">
                                            <div class="input-group-btn">
                                                <button class="btn btn-danger remove-language" type="button">Remove</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-success add-language">Add More</button>
                            <div class="row justify-content-center">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                        <button class="btn btn-primary open-cv-1" type="button">Back <span class="fa fa-arrow-right"></span></button>
                        <button class="btn btn-primary open-cv-3" type="button">Next <span class="fa fa-arrow-right"></span></button>
                    </div>
                    <!--End Language-->


                    <!--Educational Qualification-->
                    <div id="cv-3" class="frm">
                        <h2>Step 3 of 11 - Educational Qualification</h2><hr>
                        <form method="POST" action="">
                            <div class="control-group-education">
                                <div class="form-row">
                                    <div class="form-group input-group col-md">
                                        <input type="text" class="form-control" id="inputUniversityName" name="addmore[]" placeholder="University Name">
                                        <div class="input-group-btn">
                                            <button class="btn btn-danger remove-education" type="button">Remove</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <input type="text" class="form-control" id="inputDegree" value="Degree">
                                    </div>
                                    <div class="form-group col-md-7">
                                        <input type="text" class="form-control" id="inputMajor" value="Major">
                                    </div>
                                    <div class="form-group col-md">
                                        <input type="text" class="form-control" id="inputGPA" value="GPA">
                                    </div>
                                </div>
                            </div>

                            <div class="copy-education after-add-education d-none">
                                <div class="control-group-education">
                                    <div class="form-row">
                                        <div class="form-group input-group col-md">
                                            <input type="text" class="form-control" id="inputUniversityName" name="addmore[]" placeholder="University Name">
                                            <div class="input-group-btn">
                                                <button class="btn btn-danger remove-education" type="button">Remove</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row control-group">
                                        <div class="form-group col-md-3">
                                            <input type="text" class="form-control" id="inputDegree" value="Degree">
                                        </div>
                                        <div class="form-group col-md-7">
                                            <input type="text" class="form-control" id="inputMajor" value="Major">
                                        </div>
                                        <div class="form-group col-md">
                                            <input type="text" class="form-control" id="inputGPA" value="GPA">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-success add-education">Add More</button>
                            <div class="row justify-content-center">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                        <button class="btn btn-primary open-cv-2" type="button">Back <span class="fa fa-arrow-right"></span></button>
                        <button class="btn btn-primary open-cv-4" type="button">Next <span class="fa fa-arrow-right"></span></button>
                    </div>
                    <!--End Educational Qualification-->


                    <!--Technical Qualification-->
                    <div id="cv-4" class="frm">
                        <h2>Step 4 of 11 - Technical Qualification</h2><hr>
                        <form method="POST" action="">
                            <div class="control-group-technical">
                                <input type="hidden" name="inputID" id="inputID" value="<%=employeeId%>" readonly>
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="categoryID">
                                            <%
                                                for (Category u : categorys) {
                                            %>
                                            <option value="<%=u.getId()%>">
                                                <%=u.getName()%>
                                            </option>
                                            <%
                                                }
                                            %>
                                        </select>
                                    </div>
                                    <div class="form-group col-md">
                                        <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="skillsID">
                                            <%
                                                for (Skill s : skills) {
                                            %>
                                            <option value="<%=s.getId()%>">
                                                <%=s.getName()%>
                                            </option>
                                            <%
                                                }
                                            %>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <input type="number" class="form-control" name="score" id="inputProject" placeholder="Score (1-100)">
                                    </div>
                                    <div class="form-group col-md-2">
                                        <button class="btn btn-danger remove-technical" type="button">Remove</button>
                                    </div>
                                </div>
                            </div>
                            <div class="copy-technical after-add-technical d-none">
                                <div class="control-group">
                                    <div class="form-row">
                                        <div class="form-group col-md-4">
                                            <select id="inputSkill" class="form-control">
                                                <option>Programming Language</option>
                                                <option>Platform / Operating System</option>
                                                <option>Application</option>
                                                <option>Development Tools</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md">
                                            <input type="text" class="form-control" id="inputProject" placeholder="Skill Name">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="number" class="form-control" id="inputProject" placeholder="Score (1-100)">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <button class="btn btn-danger remove-technical" type="button">Remove</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-success add-technical">Add More</button>
                            <div class="row justify-content-center">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                        <button class="btn btn-primary open-cv-3" type="button">Back <span class="fa fa-arrow-right"></span></button>
                        <button class="btn btn-primary open-cv-5" type="button">Next <span class="fa fa-arrow-right"></span></button>
                    </div>
                    <!--End Technical Qualification-->


                    <!--Work Assignment-->
                    <div id="cv-5" class="frm">
                        <h2>Step 5 of 11 - Work Assignment</h2><hr>
                        <form method="POST" action="workassignmentservlet">
                            <div class="control-group-work">
                                <input type="hidden" name="inputID" id="inputID" value="<%=employeeId%>" readonly>
                                <div class="form-row">
                                    <div class="form-group col-md">
                                        <input type="text" class="form-control" id="inputProject" placeholder="Company Name" name="companyName">
                                    </div>
                                    <div class="form-group col-md">
                                        <input type="text" class="form-control" id="inputProject" placeholder="Position" name="position">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md">
                                        <textarea id="" class="form-control" rows="4" cols="50" placeholder="Job Description" name="description"></textarea>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <input type="date" class="form-control" id="inputProjectStartDate" name="startDate">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <input type="date" class="form-control" id="inputProjectEndDate" name="endDate">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-2">
                                        <button class="btn btn-danger remove-work" type="button">Remove</button>
                                    </div>
                                </div>
                            </div>
                            <div class="copy-work after-add-work d-none">
                                <div class="control-group">
                                    <div class="form-row">
                                        <div class="form-group col-md">
                                            <input type="text" class="form-control" id="inputProject" placeholder="Company Name">
                                        </div>
                                        <div class="form-group col-md">
                                            <input type="text" class="form-control" id="inputProject" placeholder="Position">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md">
                                            <textarea id="" class="form-control" rows="4" cols="50" placeholder="Job Description"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <input type="date" class="form-control" id="inputProjectStartDate">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="date" class="form-control" id="inputProjectEndDate">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <button class="btn btn-danger remove-work" type="button">Remove</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-success add-work">Add More</button>
                            <div class="row justify-content-center">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                        <button class="btn btn-primary open-cv-4" type="button">Back <span class="fa fa-arrow-right"></span></button>
                        <button class="btn btn-primary open-cv-6" type="button">Next <span class="fa fa-arrow-right"></span></button>
                    </div>
                    <!--End Work Assignment-->


                    <!--Project-->
                    <div id="cv-6" class="frm">
                        <h2>Step 6 of 11 - Project</h2><hr>
                        <form method="POST" action="projectservlet">
                            <div class="control-group-project">
                                <input type="hidden" name="inputID" id="inputID" value="<%=employeeId%>" readonly>
                                <div class="form-row">
                                    <div class="form-group col-md">
                                        <input type="text" class="form-control" id="inputProject" placeholder="Project Name" name="projectName">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md">
                                        <textarea id="" class="form-control" rows="4" cols="50" placeholder="Project Description" name="description"></textarea>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputTrainingStartDate">Project Start Date</label>
                                        <input type="date" class="form-control" id="inputProjectStartDate" name="startDate">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputTrainingStartDate">Project End Date</label>
                                        <input type="date" class="form-control" id="inputProjectEndDate" name="endDate">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-2">
                                        <button class="btn btn-danger remove-project" type="button">Remove</button>
                                    </div>
                                </div>
                            </div>
                            <div class="copy-project after-add-project d-none">
                                <div class="control-group">
                                    <div class="form-row">
                                        <div class="form-group col-md">
                                            <input type="text" class="form-control" id="inputProject" placeholder="Project Name">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md">
                                            <textarea id="" class="form-control" rows="4" cols="50" placeholder="Project Description"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputTrainingStartDate">Project Start Date</label>
                                            <input type="date" class="form-control" id="inputProjectStartDate">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputTrainingStartDate">Project End Date</label>
                                            <input type="date" class="form-control" id="inputProjectEndDate">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <button class="btn btn-danger remove-project" type="button">Remove</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-success add-project">Add More</button>
                            <div class="row justify-content-center">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                        <button class="btn btn-primary open-cv-5" type="button">Back <span class="fa fa-arrow-right"></span></button>
                        <button class="btn btn-primary open-cv-7" type="button">Next <span class="fa fa-arrow-right"></span></button>
                    </div>
                    <!--End Project-->


                    <!--Certification-->
                    <div id="cv-7" class="frm">
                        <h2>Step 7 of 11 - Certification</h2><hr>
                        <form method="POST" action="">
                            <div class="control-group-certification">
                                <div class="form-row">
                                    <div class="form-group col-md">
                                        <label for="inputPhoto">Certification Name</label>
                                        <input type="text" class="form-control" id="inputProject">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputTrainingStartDate">Certification Start Date</label>
                                        <input type="date" class="form-control" id="inputProjectStartDate">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputTrainingStartDate">Certification End Date</label>
                                        <input type="date" class="form-control" id="inputProjectEndDate">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md">
                                        <label for="inputProjectDescription">Attachment Certificate</label>
                                        <div class="custom-file">
                                            <label class="custom-file-label" for="inputEducationCertification">Choose File</label>
                                            <input type="file" class="custom-file-input" id="inputEducationCertification" lang="en" accept=".pdf, .docx, .doc">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-2">
                                        <button class="btn btn-danger remove-certification" type="button">Remove</button>
                                    </div>
                                </div>
                                <hr>
                            </div>
                            <div class="copy-certification after-add-certification d-none">
                                <div class="control-group">
                                    <div class="form-row">
                                        <div class="form-group col-md">
                                            <label for="inputPhoto">Certification Name</label>
                                            <input type="text" class="form-control" id="inputProject">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputTrainingStartDate">Certification Start Date</label>
                                            <input type="date" class="form-control" id="inputProjectStartDate">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputTrainingStartDate">Certification End Date</label>
                                            <input type="date" class="form-control" id="inputProjectEndDate">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md">
                                            <label for="inputProjectDescription">Attachment Certificate</label>
                                            <div class="custom-file">
                                                <label class="custom-file-label" for="inputEducationCertification">Choose File</label>
                                                <input type="file" class="custom-file-input" id="inputEducationCertification" lang="en" accept=".pdf, .docx, .doc">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <button class="btn btn-danger remove-certification" type="button">Remove</button>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                            <button type="button" class="btn btn-success add-certification">Add More</button>
                            <div class="row justify-content-center">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                        <button class="btn btn-primary open-cv-6" type="button">Back <span class="fa fa-arrow-right"></span></button>
                        <button class="btn btn-primary open-cv-8" type="button">Next <span class="fa fa-arrow-right"></span></button>
                    </div>
                    <!--End Certification-->


                    <!--Training-->
                    <div id="cv-8" class="frm">
                        <h2>Step 8 of 11 - Training</h2><hr>
                        <form method="POST" action="trainingservlet">
                            <div class="control-group-training">
                                <input type="hidden" name="inputID" id="inputID" value="<%=employeeId%>" readonly>
                                <div class="form-row">
                                    <div class="form-group col-md">
                                        <label for="inputPhoto">Training Name</label>
                                        <input type="text" class="form-control" id="inputProjectStartDate" name="trainingName">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputTrainingStartDate">Training Start Date</label>
                                        <input type="date" class="form-control" id="inputProjectStartDate" name="startDate">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputTrainingStartDate">Training End Date</label>
                                        <input type="date" class="form-control" id="inputProjectEndDate" name="endDate">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-2">
                                        <button class="btn btn-danger remove-training" type="button">Remove</button>
                                    </div>
                                </div>
                            </div>
                            <div class="copy-training after-add-training d-none">
                                <div class="control-group">
                                    <div class="form-row">
                                        <div class="form-group col-md">
                                            <label for="inputPhoto">Training Name</label>
                                            <input type="text" class="form-control" id="inputProjectStartDate">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md">
                                            <label for="inputPhoto">Training Description</label>
                                            <textarea id="" class="form-control" rows="4" cols="50" placeholder="TOEFL Preparation, Lembaga Bahasa dan Pendidikan Profesional LBPP LIA"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputTrainingStartDate">Training Start Date</label>
                                            <input type="date" class="form-control" id="inputProjectStartDate">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputTrainingStartDate">Training End Date</label>
                                            <input type="date" class="form-control" id="inputProjectEndDate">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <button class="btn btn-danger remove-training" type="button">Remove</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-success add-training">Add More</button>
                            <div class="row justify-content-center">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                        <button class="btn btn-primary open-cv-7" type="button">Back <span class="fa fa-arrow-right"></span></button>
                        <button class="btn btn-primary open-cv-9" type="button">Next <span class="fa fa-arrow-right"></span></button>
                    </div>
                    <!--End Training-->


                    <!--Organization-->
                    <div id="cv-9" class="frm">
                        <h2>Step 9 of 11 - Organization</h2><hr>
                        <form method="POST" action="organizationservlet">
                            <div class="control-group-organization">
                                <input type="hidden" name="inputID" id="inputID" value="<%=employeeId%>" readonly>
                                <div class="form-row">
                                    <div class="form-group col-md">
                                        <label for="inputPhoto">Organization Name</label>
                                        <input type="text" class="form-control" id="inputProjectStartDate" name="organizationName">
                                    </div>
                                    <div class="form-group col-md">
                                        <label for="inputPhoto">Organization Position</label>
                                        <input type="text" class="form-control" id="inputProjectStartDate" name="position">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputTrainingStartDate">Organization Start Date</label>
                                        <input type="date" class="form-control" id="inputProjectStartDate" name="startDate">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputTrainingStartDate">Organization End Date</label>
                                        <input type="date" class="form-control" id="inputProjectEndDate" name="endDate">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-2">
                                        <button class="btn btn-danger remove-organization" type="button">Remove</button>
                                    </div>
                                </div>
                            </div>
                            <div class="copy-organization after-add-organization d-none">
                                <div class="control-group">
                                    <div class="form-row">
                                        <div class="form-group col-md">
                                            <label for="inputPhoto">Organization Name</label>
                                            <input type="text" class="form-control" id="inputProjectStartDate">
                                        </div>
                                        <div class="form-group col-md">
                                            <label for="inputPhoto">Organization Position</label>
                                            <input type="text" class="form-control" id="inputProjectStartDate">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputTrainingStartDate">Organization Start Date</label>
                                            <input type="date" class="form-control" id="inputProjectStartDate">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputTrainingStartDate">Organization End Date</label>
                                            <input type="date" class="form-control" id="inputProjectEndDate">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <button class="btn btn-danger remove-organization" type="button">Remove</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-success add-organization">Add More</button>
                            <div class="row justify-content-center">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                        <button class="btn btn-primary open-cv-8" type="button">Back <span class="fa fa-arrow-right"></span></button>
                        <button class="btn btn-primary open-cv-10" type="button">Next <span class="fa fa-arrow-right"></span></button>
                    </div>
                    <!--End Organization-->


                    <!--Experience-->
                    <div id="cv-10" class="frm">
                        <h2>Step 10 of 11 - Experience</h2><hr>
                        <form method="POST" action="experienceservlet">
                            <div class="control-group-experience">
                                <input type="hidden" name="inputID" id="inputID" value="<%=employeeId%>" readonly>
                                <div class="form-row">
                                    <div class="form-group col-md">
                                        <label for="inputExperience">Experience Name</label>
                                        <textarea name="exName" class="form-control" rows="4" cols="50" placeholder="Oral Presenter in Seminar Nasional Matematika dan Pendidikan Matematika Program Studi Pendidikan Matematika Universitas Muhammadiyah Purworejo"></textarea>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputExperienceStartDate">Experience Start Date</label>
                                        <input type="date" class="form-control" id="inputExperienceStartDate" name="date">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputExperienceStartDate">Experience End Date</label>
                                        <input type="date" class="form-control" id="inputExperienceStartDate">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-2">
                                        <button class="btn btn-danger remove-experience" type="button">Remove</button>
                                    </div>
                                </div>
                            </div>
                            <div class="copy-experience after-add-experience d-none">
                                <div class="control-group">
                                    <div class="form-row">
                                        <div class="form-group col-md">
                                            <label for="inputExperience">Experience Name</label>
                                            <textarea id="" class="form-control" rows="4" cols="50" placeholder="Oral Presenter in Seminar Nasional Matematika dan Pendidikan Matematika Program Studi Pendidikan Matematika Universitas Muhammadiyah Purworejo"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputExperienceStartDate">Experience Start Date</label>
                                            <input type="date" class="form-control" id="inputExperienceStartDate">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputExperienceStartDate">Experience End Date</label>
                                            <input type="date" class="form-control" id="inputExperienceStartDate">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <button class="btn btn-danger remove-experience" type="button">Remove</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-success add-experience">Add More</button>
                            <div class="row justify-content-center">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                        <button class="btn btn-primary open-cv-9" type="button">Back <span class="fa fa-arrow-right"></span></button>
                        <button class="btn btn-primary open-cv-11" type="button">Next <span class="fa fa-arrow-right"></span></button>
                    </div>
                    <!--End Experience-->

                    <!--Award-->
                    <div id="cv-11" class="frm">
                        <h2>Step 11 of 11 - Award</h2><hr>
                        <form method="POST" action="awardservlet">
                            <div class="control-group-award">
                                <input type="hidden" name="inputID" id="inputID" value="<%=employeeId%>" readonly>
                                <div class="form-row">
                                    <div class="form-group col-md">
                                        <label for="inputPhoto">Award Name</label>
                                        <textarea name="awardName" class="form-control" rows="4" cols="50" placeholder="Finalist of National Olympic Mathematics and Natural Sciences (ON-MIPA) from University of Diponegoro"></textarea>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputTrainingStartDate">Award Start Date</label>
                                        <input type="date" class="form-control" id="inputProjectStartDate" name="date">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputTrainingStartDate">Award End Date</label>
                                        <input type="date" class="form-control" id="inputProjectEndDate">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-2">
                                        <button class="btn btn-danger remove-award" type="button">Remove</button>
                                    </div>
                                </div>
                            </div>
                            <div class="copy-award after-add-award d-none">
                                <div class="control-group">
                                    <div class="form-row">
                                        <div class="form-group col-md">
                                            <label for="inputPhoto">Award Name</label>
                                            <textarea id="" class="form-control" rows="4" cols="50" placeholder="Finalist of National Olympic Mathematics and Natural Sciences (ON-MIPA) from University of Diponegoro"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputTrainingStartDate">Award Start Date</label>
                                            <input type="date" class="form-control" id="inputProjectStartDate">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputTrainingStartDate">Award End Date</label>
                                            <input type="date" class="form-control" id="inputProjectEndDate">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <button class="btn btn-danger remove-award" type="button">Remove</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-success add-award">Add More</button>
                            <div class="row justify-content-center">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                        <button class="btn btn-primary open-cv-10" type="button">Back <span class="fa fa-arrow-right"></span></button>
                        <button class="btn btn-primary open1" type="button">Next <span class="fa fa-arrow-right"></span></button>
                    </div>
                    <!--End Award-->
                </div>
            </div>
        </div>
    </body>
    <%
        }
        session.removeAttribute("status");
        session.removeAttribute("status1");
        session.removeAttribute("employees");
        session.removeAttribute("maritals");
        session.removeAttribute("religions");
        session.removeAttribute("languages");
        session.removeAttribute("categorys");
        session.removeAttribute("skills");
//        session.removeAttribute("employeeId");
    %>
</html>
