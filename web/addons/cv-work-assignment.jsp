<!--Work Assignment-->
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center">Work Assignment</h3><br>
                    <form method="POST" action="">
                        <div class="form-row">
                            <div class="form-group col-md">
                                <label for="inputPhoto">Assignment Name</label>
                                <input type="text" class="form-control" id="inputProject">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputTrainingStartDate">Assignment Start Date</label>
                                <input type="date" class="form-control" id="inputProjectStartDate">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputTrainingStartDate">Assignment End Date</label>
                                <input type="date" class="form-control" id="inputProjectEndDate">
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </div>
            </div>
            <!--End Work Assignment-->
            
            <%
                response.setHeader("Cache-Control", "no-cache");
                response.setHeader("Cache-Control", "no-store");
                response.setHeader("Pragma", "no-cache");
                response.setDateHeader("Expires", 0);
            %>