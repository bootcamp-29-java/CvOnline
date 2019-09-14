<!--Organization-->
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center">Organization</h3><br>
                    <form method="POST" action="">
                        <div class="form-row">
                            <div class="form-group col-md">
                                <label for="inputPhoto">Organization Name</label>
                                <textarea id="" class="form-control" rows="4" cols="50" placeholder="Asosiasi Matematika Terapan, Matematika Universitas Diponegoro"></textarea>
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
                        <div class="row justify-content-center">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </div>
            </div>
            <!--End Organization-->
            
            <%
                response.setHeader("Cache-Control", "no-cache");
                response.setHeader("Cache-Control", "no-store");
                response.setHeader("Pragma", "no-cache");
                response.setDateHeader("Expires", 0);
            %>