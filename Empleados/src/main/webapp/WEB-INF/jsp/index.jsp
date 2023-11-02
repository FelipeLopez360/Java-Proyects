<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Sistema de Empleados</title>
</head>
<body>

<div class="container">
    <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/empleados">Sistema de Empleados</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/empleados">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/empleados/agregar">Agregar Empleado</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<div>
    <h3>


    </h3>
</div>
<div class="container">
    <table class="table table-striped table-hover table-bordered aling-middle">
        <thead class="table-dark text-center">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Nombres y Apellidos</th>
            <th scope="col">Departamento</th>
            <th scope="col">Sueldo</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="empleado" items="${empleados}">
        <tr>
            <th scope="row">${empleado.idEmpleado}</th>
            <td>${empleado.nombreEmpleado}</td>
            <td>${empleado.departamento}</td>
            <td>
                    <fmt:setLocale value="es_ES"/>
                    <fmt:formatNumber type="currency" value="${empleado.sueldo}"/>
            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Sistema de Empleados</h3>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>