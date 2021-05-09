<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.DriverManager" %>
    <%@ page import="java.sql.Statement" %>

    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.css" />
    <link rel="stylesheet" href="css/sort.css" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.js"></script>
    <script src="js/sort.js"></script>

    <title>Employees</title>
    <style>
        .table-row{
            cursor:pointer;
        }
    </style>
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
                    <a class="nav-link text-white" href="#">Сотрудники </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/resourcetracking_war_exploded/dashboardadmin.jsp">Отчет </a>
                </li>
            </ul>
        </div>
    </nav>
</div>

<div class="d-flex justify-content-center">
    <div class="pt-5 pb-2">
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-warning .col-md-3 .ml-auto" data-toggle="modal" data-target="#exampleModal">
            Добавить сотрудников в проект
        </button>
    </div>

    <!-- Modal -->
    <form method="post" action="insertProject.jsp">
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Выбрать проект</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Названние проекта" id="newProjName" name="newProjName">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-warning" data-dismiss="modal">Закрыть</button>
                        <button type="submit" class="btn btn-warning">Сохранить</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<%--modal------------------------------------------------------------------------------------------%>

<%--table------------------------------------------------------------------------------------------%>
<form>
    <div class="row pt-2">
        <div class="container">
            <table id="allproj" class="table table-striped sortable align-middle table-responsive-md mt-7">
                <thead class="thead-warning">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Имя сотрудника</th>
                    <th scope="col">Выбрать</th>
                </tr>
                </thead>
                <tbody>
                <%
                    try
                    {
                        int i = 0;
                        Class.forName("com.mysql.jdbc.Driver");
                        String url = "jdbc:mysql://localhost:3306/resource_tracking?useUnicode=true&serverTimezone=UTC&useSSL=true&verifyServerCertificate=false";
                        String username = "root";
                        String password = "root";
                        String query = "SELECT * FROM users";
                        Connection conn = DriverManager.getConnection(url, username, password);
                        Statement stmt = conn.createStatement();
                        ResultSet rs = stmt.executeQuery(query);
                        String name;
                        int id;
                        while(rs.next()) {
                            name = rs.getString("name");
                            id = rs.getInt("id");
                %>

                <tr class ="table-row">
                    <td scope="col"><%= i%></td>
                    <td scope="col"><%= name%></td>
                    <td scope="col"><input class="form-check-input" type="checkbox" id =<%= String.valueOf(id)%>></td>
                </tr>

                <%
                        ++i;
                    }
                %>
                </tbody>
            </table>
            <%
                    rs.close();
                    stmt.close();
                    conn.close();
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }

            %>

        </div>
    </div>
</form>



<script>
    function addProjName(clicked)
    {

    }
</script>



<script>
    function setValue() {
        document.getElementById("show1").value=document.getElementById("numbers").value;
        document.productForm.submit();

        return document.getElementById("show1").value;

    }
</script>




<!-- Bootstrap -->
<script src="js/bootstrap.min.js" type="text/javascript"></script>


<script>
    function sortTable(n) {
        var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
        table = document.getElementById("allproj");
        switching = true;
        dir = "asc";
        while (switching) {
            switching = false;
            rows = table.rows;
            for (i = 1; i < (rows.length - 1); ++i ) {
                shouldSwitch = false;
                x = rows[i].getElementsByTagName("TD")[n];
                y = rows[i + 1].getElementsByTagName("TD")[n];
                if (dir == "asc") {
                    if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                        shouldSwitch= true;
                        break;
                    }
                } else if (dir == "desc") {
                    if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                        shouldSwitch = true;
                        break;
                    }
                }
            }
            if (shouldSwitch) {
                rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                switching = true;
                switchcount ++;
            } else {
                if (switchcount == 0 && dir == "asc") {
                    dir = "desc";
                    switching = true;
                }
            }
        }
    }
</script>





<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</body>

</html>