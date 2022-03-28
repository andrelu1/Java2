<%-- 
    Document   : jusimples
    Created on : 28 de mar. de 2022, 15:27:26
    Author     : root
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String errorMessage = null;
    double capital1=0, tempo1=0, juros1=0;
    try{
        capital1 = Double.parseDouble(request.getParameter("capital1"));
    }catch(Exception e){
        errorMessage = "Erro ao ler o capital: "+request.getParameter("capital1");
    }
    
    try{
        tempo1 = Double.parseDouble(request.getParameter("tempo1"));
    }catch(Exception e){
        errorMessage = "Erro ao ler o tempo: "+request.getParameter("tempo1");
    }
    try{
        juros1 = Double.parseDouble(request.getParameter("juros1"));
    }catch(Exception e){
        errorMessage = "Erro ao ler o juros: "+request.getParameter("juros1");
    }
%>       
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/boots.jspf" %>
        <title>Calculadora Juros</title>
    </head>
    <body>
     <!-- Background image -->
  <div
    class="p-5 text-center bg-image"
    style="
      background-image: url('https://img.wallpapersafari.com/desktop/800/450/42/49/yF4eIx.jpg');
      height: 600px;
    "
  >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
    <div class="d-flex justify-content-center align-items-center h-100">
               <form>
        <div class="text-white">
          <h1 class="mb-3">Juros Compostos</h1>
          <div class="input-group input-group-sm mb-3">
  <span class="input-group-text" id="inputGroup-sizing-sm">Capital</span>
  <input type="number" class="form-control" name="capital1" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" />
</div>
          <div class="input-group input-group-sm mb-3">
  <span class="input-group-text" id="inputGroup-sizing-sm">Juros</span>
  <input type="number" class="form-control" name="juros1" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" />
          </div>
          <div class="input-group input-group-sm mb-3">
  <span class="input-group-text" id="inputGroup-sizing-sm">Tempo</span>
  <input type="number" class="form-control" name="tempo1" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" />
</div>
 <div class="d-grid gap-2">
  <button class="btn btn-outline-light btn-rounded" data-mdb-ripple-color="dark" type="submit">Calcular</button>
            </form>

 </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Background image -->    
    </body>
</html>
