<%-- 
    Document   : curriculum-vitae
    Created on : Sep 11, 2019, 8:36:48 AM
    Author     : Wehijin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Cache-Control", "no-store");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
//        String cv_status = (String) session.getAttribute("cv_status");
        String cv_status = "1";
//        if (cv_status == null) {
//            response.sendRedirect("cvservlet");
//        } else {
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <%@include file='addons/framework.jsp' %>
    </head>
    <body class="hasNavbar">
        <!--Navigation Menu-->
        <%@include file='addons/navbar.jsp' %>
        <!-- End Navigation Menu-->

        <!--CV Creation-->
        <div class="container">
            <%
                if (cv_status == "1") {%>
            <%@include file='addons/cv-personal-data.jsp' %>
            <%} else if (cv_status == "2") {%>
            <%@include file='addons/cv-language.jsp' %>
            <%} else if (cv_status == "3") {%>
            <%@include file='addons/cv-educational-qualification.jsp' %>
            <%} else if (cv_status == "4") {%>
            <%@include file='addons/cv-technical-qualification.jsp' %>
            <%} else if (cv_status == "5") {%>
            <%@include file='addons/cv-work-assignment.jsp' %>
            <%} else if (cv_status == "6") {%>
            <%@include file='addons/cv-project.jsp' %>
            <%} else if (cv_status == "7") {%>
            <%@include file='addons/cv-certification.jsp' %>
            <%} else if (cv_status == "8") {%>
            <%@include file='addons/cv-training.jsp' %>
            <%} else if (cv_status == "9") {%>
            <%@include file='addons/cv-organization.jsp' %>
            <%} else if (cv_status == "10") {%>
            <%@include file='addons/cv-experience.jsp' %>
            <%} else if (cv_status == "11") {%>
            <%@include file='addons/cv-award.jsp' %>
            <%} else {%>
            <%@include file='addons/cv-personal-data.jsp' %>
            <%}
            %>
        </div>
        <!--End CV Creation-->

        <!--AKHIR LOGIC UJI COBA-->
    </body>

    <%
//        }
    %>
</html>
