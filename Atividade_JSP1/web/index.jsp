<%-- 
    Document   : index
    Created on : 21 de mar. de 2022, 15:23:09
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html>
    <head>
      <title>Calendário</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    </head>
    <body>
<header>
  <!-- Intro settings -->
  <style>
    /* Default height for small devices */
    #intro-example {
      height: 400px;
    }

    /* Height for devices larger than 992px */
    @media (min-width: 992px) {
      #intro-example {
        height: 700px;
      }
    }
  </style>
<div
    id="intro-example"
    class="p-5 text-center bg-image"
    style="background-image: url('https://images6.alphacoders.com/115/1155266.png'); background-size:100% 100%; "
    >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.7);">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-info">
            
          <h1 class="mb-3">Calendario</h1>
          <h5 class="mb-4">Selecione o ano e o mês para verificar o calendário.</h5>
          <form action="calendario_1.jsp">
          <div class="input-group mb-3">
          <span class="input-group-text" id="basic-addon1">Ano</span>
          <input type="number" class="form-control" placeholder="Exemplo: 2021" name="ano" aria-label="Username" aria-describedby="basic-addon1">
          </div>  
        <div class="input-group mb-3">
          <span class="input-group-text" id="basic-addon1">Mês</span>
          <input type="number" class="form-control" placeholder="Exemplo: 04" name= "mes" aria-label="Username" aria-describedby="basic-addon1">
          </div>  
          <input 
            class="btn btn-outline-info btn-lg m-2"
            type='submit'
            value="Verificar Calendário"
            role="button"
            />
         </form>
             <div>
         </div>
      </div>
    </div>
  </div>
</div>   
  <!-- Background image -->
</header>
        
       <!--JavaScript at end of body for optimized loading-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
     </body>
</html>
