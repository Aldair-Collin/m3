<%-- 
    Document   : Lista
    Created on : 21/09/2022, 07:04:30 PM
    Author     : ILP
--%>


<jsp:useBean id="control" scope="page" class="modelo.Conexion" />
<%
    java.util.Vector<veterinaria.Cliente> cliente = control.listaClientes();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    </head>
    <body>

        <h1 class="text-danger ml-2">Listar Clientes</h1>
        <br>
        <button type="button" class="btn btn-primary ml-4">Agregar Nuevo</button>
        <br>
        <br>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col" class="col-sm-1 text-center">DNI</th>
                    <th scope="col" class="col-sm-2 text-center">NOMBRE</th>
                    <th scope="col" class="col-sm-2 text-center">APELLIDO PATERNO</th>
                    <th scope="col" class="col-sm-2 text-center">APELLIDO MATERNO</th>
                    <th scope="col" class="col-sm-2 text-center">TELEFONO</th>
                    <th scope="col" class="col-sm-3 text-center">CORREO ELECTRONICO</th>
                </tr>
            </thead>
            <%for (veterinaria.Cliente clientes : cliente) {%>
            <tbody>
                <tr>
                    <td scope="col" class="text-center text-danger"><%=clientes.getDni()%></th>
                    <td class="text-center"><%=clientes.getNombre()%></td>
                    <td class="text-center"><%=clientes.getApellido_paterno()%></td>
                    <td class="text-center"><%=clientes.getApellido_materno()%></td>
                    <td class="text-center"><%=clientes.getTelefono()%></td>
                    <td class="text-center"><%=clientes.getCorreo()%></td>
                </tr>
            </tbody>
            <% }%>
        </table>

    </body>
</html>