<%--
  Created by IntelliJ IDEA.
  User: Leonel
  Date: 6/12/2023
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Back Office</title>
</head>
<style>
    body {
        height: 100vh;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    a{
        text-decoration: none;
        color: #000;
    }
    h1{
        color: blue;
    }
</style>
<body>
<div class="container">
    <h1>PANEL DE TICKETS</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">IdVenta</th>
            <th scope="col">Nombre</th>
            <th scope="col">Apellido</th>
            <th scope="col">Mail</th>
            <th scope="col">Cantidad</th>
            <th scope="col">Tipo</th>
            <th scope="col">Total</th>
            <th scope="col">Eliminar</th>
        </tr>
        </thead>
        <tbody>

        <tr>
            <th scope="row">Predeterminado</th>
            <td>Celda</td>
            <td>Celda</td>
            <td>Celda</td>
            <td>Celda</td>
            <td>Celda</td>
            <td>Celda</td>
            <td>Celda</td>
        </tr>

        </tbody>
    </table>
    <div class="row">
        <div class="col-2">
            <button type="submit" class="btn btn-success w-100 "><a href="index.jsp">Volver</a></button>
        </div>
        <div class="col-2">
            <button type="submit" class="btn btn-warning w-100 "><a href="#">Oradores</a></button>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
