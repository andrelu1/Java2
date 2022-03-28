<%-- 
    Document   : jusimples
    Created on : 28 de mar. de 2022, 15:27:26
    Author     : root
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
    String errorMessage = null;
    double capital=0, tempo=0, juros=0;
    try{
        capital = Double.parseDouble(request.getParameter("capital"));
    }catch(Exception e){
        errorMessage = "Erro ao ler o capital: "+request.getParameter("capital");
    }
    
    try{
        tempo = Double.parseDouble(request.getParameter("tempo"));
    }catch(Exception e){
        errorMessage = "Erro ao ler o tempo: "+request.getParameter("tempo");
    }
    try{
        juros = Double.parseDouble(request.getParameter("juros"));
    }catch(Exception e){
        errorMessage = "Erro ao ler o juros: "+request.getParameter("juros");
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
          <h1 class="mb-3">Juros Simples</h1>
          <div class="input-group input-group-sm mb-3">
  <span class="input-group-text" id="inputGroup-sizing-sm">Capital</span>
  <input type="number" class="form-control" name="capital" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" />
</div>
          <div class="input-group input-group-sm mb-3">
  <span class="input-group-text" id="inputGroup-sizing-sm">Juros</span>
  <input type="number" class="form-control" name="juros" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" />
          </div>
          <div class="input-group input-group-sm mb-3">
  <span class="input-group-text" id="inputGroup-sizing-sm">Tempo</span>
  <input type="number" name="tempo" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" />
</div>
 <div class="d-grid gap-2">
   <button class="btn btn-outline-light btn-rounded" data-mdb-ripple-color="dark" type="submit">Calcular</button>
            </form>
           <%if(errorMessage==null){%>
           capital = Double.parseDouble(request.getParameter("capital"));
           tempo = Double.parseDouble(request.getParameter("tempo"));
           juros = Double.parseDouble(request.getParameter("montante"));
           Juros:"+ca+" * "+i+" * "+t+"= "+(ca*i*t);
            Montante: "+ca+" + "+(ca*i*t)+" = "+(ca+(ca*i*t));
        <%}else{%>
            <div style="color: red"><%= errorMessage %></div>
        <%}%>
 </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Background image -->    
    </body>
</html>

