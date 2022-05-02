<%-- 
    Document   : index
    Created on : 2 de mai. de 2022, 15:25:23
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Disciplinas"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<%
       Disciplinas poo = new Disciplinas("POO", "Programação Orientada a Objetos", "Linguagem de Programação", "Segunda","13;00 as 16;40"); 
       Disciplinas labdba = new Disciplinas("LBD", "Laboratório de Banco de Dados", "Banco de Dados", "Segunda","17;00 as 18;30"); 
       Disciplinas si = new Disciplinas("SI", "Segurança da Informação", "Segurança da Informação", "Terça","17;00 as 18;30");
       Disciplinas labg = new Disciplinas("LBG", "Laboratorio de Gestao", "Lab Gestao", "Quarta","15;00 as 18;30");
       Disciplinas les = new Disciplinas("LES", "Laboratorio de Engenharia de Software", "Lab Eng Software", "Segunda","15;00 as 18;30"); 
       Disciplinas php = new Disciplinas("PHP", "PHP", "Linguagem de Programação", "Segunda","15;00 as 18;30"); 
       ArrayList<Disciplinas> lista = new ArrayList<>();
       lista.add(poo); lista.add(labdba); lista.add(si); lista.add(labg);
       lista.add(les); lista.add(php);
%>    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/boots.jspf" %>
        <title>TP Aula 11</title>
    </head>
    <body>
   <div
    class="p-5 text-center bg-image"
    style="
      background-image: url('https://wallpaperaccess.com/download/notebook-1508679');
      height: 700px;
    "
  >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-white">
          <h1 class="mb-3">Lista das Disciplinas</h1>
           <h1 class="mb-3">André Luis Rosa Mastrocola</h1>
           <h4 class="mb-3">
        <table border="1">
            <tr>
                <th>Sigla</th>
                <th>Nome</th> 
                <th>Ementa</th>
                <th>Dia Da Semana</th>
                <th>Horario</th>

            </tr>
            <%for (Disciplinas d: lista){%>
            <tr>
                <td><%= d.getSigla()%></td>
                <td><%= d.getNome()%></td>
                 <td><%= d.getEmenta()%></td>
                  <td><%= d.getDiaSemana()%></td>
                  <td><%= d.getHorario()%></td>
            </tr>            
            <%}%>
             </table>             
                            
           </h4>
        </div>
      </div>
    </div>
  </div>
    </body>
</html>

