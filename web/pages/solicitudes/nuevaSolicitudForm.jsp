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

            <!-- container -->


            <div class="jumbotron jumbotron-fluid">
                <br>
                <br>
                <br>
                <br>
                <br>
                <br><br>
                <br>
                <br>
                <!-- container -->
                <div class="container">

                    <!-- info panel -->
                    <div class="row justify-content-center">
                        <div class="col-10 info-panel" style="color:black;">

                            <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
                            <h1>Nueva Solicitud</h1>
                            <h:inputHidden id="validateCreateField" validator="#{customer.validateCreate}" value="value"/>
                            <h:panelGrid columns="2">
                                <h:outputText value="Cédula:"/>
                                <h:inputText id="customerId" value="#{customer.customer.customerId}" title="CustomerId" required="true" requiredMessage="The customerId field is required." />
                                <h:outputText value="Dirección:"/>
                                <h:inputText id="zip" value="#{customer.customer.zip}" title="Zip" required="true" requiredMessage="The zip field is required." />
                                <h:outputText value="Nombre:"/>
                                <h:inputText id="name" value="#{customer.customer.name}" title="Name" />
                                <h:outputText value="Direccion 1:"/>
                                <h:inputText id="addressline1" value="#{customer.customer.addressline1}" title="Addressline1" />
                                <h:outputText value="Dirección 2:"/>
                                <h:inputText id="addressline2" value="#{customer.customer.addressline2}" title="Addressline2" />
                                <h:outputText value="Ciudad:"/>
                                <h:inputText id="city" value="#{customer.customer.city}" title="City" />
                                <h:outputText value="Ciudad:"/>
                                <h:inputText id="state" value="#{customer.customer.state}" title="State" />
                                <h:outputText value="Teléfonon"/>
                                <h:inputText id="phone" value="#{customer.customer.phone}" title="Phone" />
                                <h:outputText value="Fax:"/>
                                <h:inputText id="fax" value="#{customer.customer.fax}" title="Fax" />
                                <h:outputText value="Email:"/>
                                <h:inputText id="email" value="#{customer.customer.email}" title="Email" />
                                <h:outputText value="CreditLimit:"/>
                                <h:inputText id="creditLimit" value="#{customer.customer.creditLimit}" title="CreditLimit" />
                            </h:panelGrid>
          
                            <br />
                            <h:commandLink action="#{customer.create}"  styleClass="nav-item nav-link" value="Guardar"/>
                            <br />
                            <br />
                            <h:commandLink action="#{customer.listSetup}"  styleClass="nav-item nav-link" value="Show All Customer Items" />
                            <br />
                            <h:commandLink value="Regresar" action="home" styleClass="nav-item nav-link"  />
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
