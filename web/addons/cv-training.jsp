<%
    String employeeId = (String) session.getAttribute("employeeId");
%>
<!--Training-->
<div class="card">
    <div class="card-body">
        <h3 class="text-center">Training</h3><br>
        <form method="POST" action="trainingservlet">
            <div class="form-row">
                <div class="form-group col-md">
                    <label for="inputPhoto">Training Name</label>
                    <textarea name="name" id="" class="form-control" rows="4" cols="50" placeholder="TOEFL Preparation, Lembaga Bahasa dan Pendidikan Profesional LBPP LIA"></textarea>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputTrainingStartDate">Training Start Date</label>
                    <input type="date" class="form-control" id="inputProjectStartDate" name="inputProjectStartDate">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputTrainingStartDate">Training End Date</label>
                    <input type="date" class="form-control" id="inputProjectEndDate" name="inputProjectEndDate">
                </div>
            </div>
            <div class="row justify-content-center">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </form>
    </div>
</div>
<!--End Training-->

<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);


%>