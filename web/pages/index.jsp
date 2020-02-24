<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.util.ResourceBundle" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/2/24
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>稻教经典永流传</title>
  </head>
  <body>
  <table>
      <thead>
          <tr>
              <th>部门编号</th>
              <th>部门名称</th>
              <th>部门所在地</th>
          </tr>
      </thead>
      <tbody>
          <%
              Class.forName("com.mysql.jdbc.Driver");
              String url="jdbc:mysql//localhost:3306/qwe?useUnicode=true&characterEncoding=utf8";
              String username="root";
              String password="123456";
              Connection con= DriverManager.getConnection(url,username,password);
              PreparedStatement pstmt=con.prepareStatement("select deptno,dname,loc from dept");
              ResultSet rs=pstmt.executeQuery();
              while (rs.next()){
                out.print("<tr>");
                    out.print("<td>"+rs.getInt("deptno")+"</td>");
                    out.print("<td>"+rs.getString("dname")+"</td>");
                    out.print("<td>"+rs.getString("loc")+"</td>");
                out.print("</tr>");
              }
              rs.close();
              pstmt.close();
              con.close();
          %>
      </tbody>
  </table>


  </body>
</html>
