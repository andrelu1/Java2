<%-- 
    Document   : clientes
    Created on : 9 de mai. de 2022, 16:30:37
    Author     : root
--%>

<%@page import="model.Clientes"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestEx = null;
    ArrayList<Clientes> list = new ArrayList<>();
    int count = 0;
    try{
        count = Clientes.getCount();
        list = Clientes.getList();
    }catch(Exception e){
        requestEx = e;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Index - JDBC | Clientes</title>
    </head>
    <body>
        <h1>JDBC</h1>
        <h2>Lista de artistas (<%= count %> registros)</h2>
        <%if(requestEx!=null){%>
        <h3 style="color: red"><%= requestEx.getMessage() %></h3>
        <%}%>
        <table border="1">
            <tr><th>id</th><th>name</th></tr>
            <%for(Clientes a: list){%>
            <tr>
                <td><%= a.getId() %></td>
                <td><%= a.getNome() %></td>
                <td><%= a.getCidade() %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
