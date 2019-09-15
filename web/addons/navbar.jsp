<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="home.jsp">Aplikasi CV Online</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="curriculum-vitae.jsp">Data CV</a>
            </li>
        </ul>
    </div>
    <div class="form-inline">
        <button type="submit" class="btn btn-danger" onclick="logout()">Log Out</button>
    </div>
    <script>
        function logout() {
            Swal.fire({
                title: 'Are you sure Log Out?',
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#d33',
                cancelButtonColor: '#3085d6',
                confirmButtonText: 'Yes',
                cancelButtonText: 'No'
            }).then((result) => {
                if (result.value) {
                    window.location.href = "loginservlet?action=logout";
                } else {
                    swal.fire("Batal Logout!");
                }
            })
        }
    </script>
</nav>