<%-- 
    Document   : funcionarios
    Created on : 9 de mai. de 2022, 16:26:00
    Author     : root
--%>

<%@page import="model.Funcionarios"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestEx = null;
    ArrayList<Funcionarios> list = new ArrayList<>();
    int count = 0;
    try{
        count = Funcionarios.getCount();
        list = Funcionarios.getList();
    }catch(Exception e){
        requestEx = e;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Index - JDBC | Funcionarios</title>
    </head>
    <body>
        <h1>JDBC</h1>
        <h2>Lista de Funcionarios (<%= count %> registros)</h2>
        <%if(requestEx!=null){%>
        <h3 style="color: red"><%= requestEx.getMessage() %></h3>
        <%}%>
        <table border="1">
            <tr><th>id</th><th>name</th></tr>
            <%for(Funcionarios a: list){%>
            <tr>
                <td><%= a.getFuncionarioID() %></td>
                <td><%= a.getTitulo() %></td>
                <td><%= a.getEmail() %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
