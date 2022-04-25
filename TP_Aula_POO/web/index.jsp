<%-- 
    Document   : index
    Created on : 25 de abr. de 2022, 16:23:07
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="tempo.Horario"%>
<!DOCTYPE html>
<%
    Horario agora = new Horario();
    agora.setHoras(16);
    agora.setMinutos(32);
    agora.setSegundos(25);

    Horario intervalo = new Horario(16, 40, 0);
%>
<html>
    <head>
         <%@include file="WEB-INF/jspf/header.jspf" %>
         <%@include file="WEB-INF/jspf/boots.jspf" %>
        <title>Java OO</title>
    </head>
    <body>
        
  <!-- Background image -->
  <div
          class="p-5 text-center bg-image"
          style="
          background-image: url('https://wallpaperaccess.com/download/minimalist-design-2767162');
          height: 100vh;
        "
  >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.1);">
      <div class="d-flex justify-content-center align-items-top h-100">
        <div class="text-white">
          <h1 class="mb-3">Confira os Horarios</h1>
          <h5>Horario de agora:</h5>
        <div><%= agora.getHorario() %></div>
        <h5>Intervalo:</h5>
        <div><%= intervalo.getHorario() %></div>
        </div>
      </div>
    </div>
  </div>

</body>