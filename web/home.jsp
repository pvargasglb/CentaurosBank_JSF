<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%--
    This file is an entry point for JavaServer Faces application.
--%>
<f:view>
    
    <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="/JSFCentauroBank/faces/css/style.css">
    <link rel="stylesheet" type="text/css" href="/JSFCentauroBank/faces/jsfcrud.css" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Viga" rel="stylesheet">

    <title>Centauro Bank</title>
  </head>
  <body>
         <h:form>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container">
        <a class="navbar-brand" href="#">Centauro Bank</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav ml-auto">
            <h:commandLink  styleClass="nav-item nav-link" action="home" value="Home"/>
            <h:commandLink  styleClass="nav-item nav-link" action="#{customer.listSetup}" value="Conócenos"/>
            <h:commandLink  styleClass="nav-item nav-link" action="solicitudForm" value="Solicita tu tarjeta de crédito"/>
            <a class="nav-item nav-link" href="#">Solicita tu crédito de consumo</a>
            <a class="nav-item nav-link" href="#">Solicitudes sobre tu servicio</a>
          </div>
        </div>
      </div>
    </nav>

    <div class="jumbotron jumbotron-fluid">
      <div class="container">
        <h1 class="display-4">Hacemos realidad tus sueños</h1>
        <a href="#" class="btn btn-info btn-lg tombol">Comunicate con uno de nuestros asesores</a>
      </div>
    </div>


    <!-- container -->
    <div class="container">

      <!-- info panel -->
      <div class="row justify-content-center">
        <div class="col-10 info-panel">
          <div class="row">
            <div class="col-sm">
              <img src="img/employee.png" alt="Employee" class="img-fluid float-left">
              <h4>Tarjetas de crédito</h4>
            </div>
            <div class="col-lg">
              <img src="img/hires.png" alt="HiRes" class="img-fluid float-left">
              <h4>Créditos de consumo</h4>
            </div>
            <div class="col-lg">
              <img src="img/security.png" alt="Security" class="img-fluid float-left">
              <h4>Soporte sobre tus servicios</h4>
            </div>
          </div>
        </div>
      </div>
    
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>

</h:form>
</f:view>
