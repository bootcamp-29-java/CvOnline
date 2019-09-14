<!--Award-->
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center">Award</h3><br>
                    <form method="POST" action="">
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
                        <div class="row justify-content-center">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </div>
            </div>
            <!--End Award-->
            
            <%
                response.setHeader("Cache-Control", "no-cache");
                response.setHeader("Cache-Control", "no-store");
                response.setHeader("Pragma", "no-cache");
                response.setDateHeader("Expires", 0);
            %>