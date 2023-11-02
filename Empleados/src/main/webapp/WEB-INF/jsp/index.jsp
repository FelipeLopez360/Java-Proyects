<%@ include file="comunes/cabecero.jsp"%>
<%@ include file="comunes/navegacion.jsp"%>



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

<%@ include file="comunes/pie-pagina.jsp"%>