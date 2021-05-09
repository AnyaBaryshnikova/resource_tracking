<html>

<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="java.sql.*" %>

    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css'>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>

    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.js"></script>
    <script src="js/pie.js"></script>
    <script src="style/dashboard.css"></script>

    <title>Dashboard</title>
</head>

<body>
<div class="row pb-5">
    <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-warning">
        <a class="navbar-brand" href="#">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="/resourcetracking_war_exploded/projectsadmin.jsp">Проекты <span class="sr-only"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/resourcetracking_war_exploded/employees.jsp">Сотрудники </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Отчет <span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
    </nav>
</div>

<h2>Название проекта</h2>



<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<div class="container d-flex justify-container-center">
    <div class="row">
        <div class="col-md-12">
            <div id="donutchart" style="width: 900px; height: 500px;"></div>
        </div>
    </div>
</div>

<h3>Сотрудники</h3>
<div class="container mt-5">
    <div class="card">
        <div class="row no-gutters">
            <div class="col-md-8">
                <div class="rating-progress-bars p-3">
                    <div class="progress-1 align-items-center">
                        <div class="pb-2">
                            <div class="progress">
                                <div class="progress-bar bg-success" role="progressbar" style="width: 70%;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"> Сотрудник 1: 71/100 </div>
                            </div>
                        </div>
                        <div class="pb-2">
                            <div class="progress">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: 55%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">Сотрудник 2: 55/100</div>
                            </div>
                        </div>
                        <div class="pb-2">
                            <div class="progress">
                                <div class="progress-bar bg-primary" role="progressbar" style="width: 48%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">Сотрудник 3: 48/100</div>
                            </div>
                        </div>
                        <div class="pb-2">
                            <div class="progress">
                                <div class="progress-bar bg-warning" role="progressbar" style="width: 30%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">Сотрудник 4: 30/100</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</body>

</html>