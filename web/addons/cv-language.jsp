<%@page import="models.Language"%>
<%@page import="java.util.List"%>
<%
//    List<EmployeeSkill> employeeSkills = (List<EmployeeSkill>) session.getAttribute("employeeskills");
    List<Language> languages = (List<Language>) session.getAttribute("languages");
//    List<Skill> skills = (List<Skill>) session.getAttribute("skills");

    if (languages == null) {
        response.sendRedirect("languageservlet");
    } else {
%>
<!--Language-->
<div class="card">
    <div class="card-body">
        <h3 class="text-center">Language</h3><br>
        <form method="POST" action="">
            <div class="form-row">
                <div class="form-group input-group col-md-4">
                    <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
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
                        <button class="btn btn-danger remove" type="button">Remove</button>
                    </div>
                </div>
                <div class="copy after-add-language d-none">
                    <div class="form-group control-group input-group col-md-4">
                        <input type="text" name="addmore[]" class="form-control" id="inputLanguage" placeholder="Ex: Bahasa Indonesia" value="">
                        <div class="input-group-btn">
                            <button class="btn btn-danger remove" type="button">Remove</button>
                        </div>
                    </div>
                </div>
            </div>
            <button type="button" class="btn btn-success add-language">Add More</button>
            <div class="row justify-content-center">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </form>
    </div>
</div>
<!--End Language-->

<script type="text/javascript">
    $(document).ready(function () {
        $(".add-language").click(function () {
            var html = $(".copy").html();
            $(".after-add-language").before(html);
        });
        $("body").on("click", ".remove", function () {
            $(this).parents(".control-group").remove();
        });
    });
</script>
<%
    }

    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

    session.removeAttribute("languages");
%>