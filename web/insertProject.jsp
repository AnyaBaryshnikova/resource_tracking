<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String newProjname = request.getParameter("newProjName");
    if(newProjname == ""){
        response.sendRedirect("projectsadmin.jsp");
        return;
    }

    try {
        String q1 = "select * from projects";

        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/resource_tracking?useUnicode=true&serverTimezone=UTC&useSSL=true&verifyServerCertificate=false";
        String username = "root";
        String password = "root";
        Connection conn = DriverManager.getConnection(url, username, password);
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(q1);
        int id = 0;
        while(rs.next())
        {
            id = rs.getInt("id");
        }
        id += 1;

        String query = "insert into projects(id, name, status) values('" + id + "', '" + newProjname + "', '1')";

        int i = stmt.executeUpdate(query);

        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    response.sendRedirect("projectsadmin.jsp");

%>