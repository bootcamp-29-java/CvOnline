<%@page import="models.Major"%>
<%@page import="models.Degree"%>
<%@page import="models.University"%>
<%@page import="models.EducationHistory"%>
<%@page import="java.util.List"%>
<%
//    List<EducationHistory> educationHistorys = (List<EducationHistory>) session.getAttribute("educationHistorys");
    List<University> universitys = (List<University>) session.getAttribute("universitys");
    List<Degree> degrees = (List<Degree>) session.getAttribute("degrees");
    List<Major> majors = (List<Major>) session.getAttribute("majors");
//    List<University> universitys = (List<University>) session.getAttribute("university");
    if (universitys == null) {
        response.sendRedirect("educationalqualification");
    } else {
%>
<!--Educational Qualification-->
<div class="card">
    <div class="card-body">
        <h3 class="text-center">Educational Qualification</h3><br>
        <form method="POST" action="">
            <div class="form-row">
                <div class="form-group col-md">
                    <label for="inputPhoto">University Name</label>
                    <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                        <%
                            for (University u : universitys) {
                        %>
                        <option value="<%=u.getId()%>">
                            <%=u.getName()%>
                        </option>
                        <%
                            }
                        %>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="inputProjectStartDate">Degree</label>
                    <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                        <%
                            for (Degree eh : degrees) {
                        %>
                        <option value="<%=eh.getId()%>">
                            <%=eh.getName()%>
                        </option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="form-group col-md-7">
                    <label for="inputProjectStartDate">Major</label>
                    <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                        <%
                            for (Major m : majors) {
                        %>
                        <option value="<%=m.getId()%>">
                            <%=m.getName()%>
                        </option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="form-group col-md">
                    <label for="inputGPA">GPA</label>
                    <input type="text" class="form-control" id="inputGPA">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md">
                    <label for="inputProjectDescription">Certificate</label>
                    <div class="custom-file">
                        <label class="custom-file-label" for="inputEducationCertification">Choose File</label>
                        <input type="file" class="custom-file-input" id="inputEducationCertification" lang="en" accept=".pdf, .docx, .doc">
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </form>
    </div>
</div>
<!--End Educational Qualification-->

<%
    }
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

    session.removeAttribute("universitys");
    session.removeAttribute("degrees");
    session.removeAttribute("majors");

%>