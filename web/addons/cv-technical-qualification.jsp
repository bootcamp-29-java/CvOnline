<%@page import="models.Skill"%>
<%@page import="models.Category"%>
<%@page import="java.util.List"%>
<%@page import="models.EmployeeSkill"%>
<%
    List<EmployeeSkill> employeeSkills = (List<EmployeeSkill>) session.getAttribute("employeeskills");
    List<Category> categorys = (List<Category>) session.getAttribute("categorys");
    List<Skill> skills = (List<Skill>) session.getAttribute("skills");

    if (employeeSkills == null) {
        response.sendRedirect("technicalqualification");
    } else {
%>
<!--Technical Qualification-->
<div class="card">
    <div class="card-body">
        <h3 class="text-center">Technical Qualification</h3><br>
        <form method="POST" action="">
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="inputSkillCategory">Category</label>
                    <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
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
                    <label for="inputPhoto">Skill Name</label>
                    <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
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
                    <label for="inputPhoto">Score (1-100)</label>
                    <input type="number" class="form-control" id="inputProject" placeholder="">
                </div>
                <div class="form-group col-md-2">
                    <label class="d-sm-none d-md-block" for="inputPhoto">Remove Data?</label>
                    <button class="btn btn-danger remove" type="button">Remove</button>
                </div>
            </div>
            <div class="row justify-content-center">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </form>
    </div>
</div>
<!--End Technical Qualification-->

<%
    }
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

    session.removeAttribute("employeeskills");
    session.removeAttribute("skills");
    session.removeAttribute("categorys");
%>