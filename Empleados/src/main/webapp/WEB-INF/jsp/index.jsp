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
            <th scope="col">Acciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="empleado" items="${empleados}">
            <tr>
                <th scope="row">${empleado.idEmpleado}</th>
                <td>${empleado.nombreEmpleado}</td>
                <td>${empleado.departamento}</td>
                <td>
                    <fmt:setLocale value="es"/>
                    <fmt:formatNumber type="currency" value="${empleado.sueldo}"/>
                </td>
                <td class="text-center">
                    <c:set var="urlEditar">
                        <c:url value="${application.contextPaht}/editar">
                            <c:param name="idEmpleado" value="${empleado.idEmpleado}"/>
                        </c:url>
                    </c:set>
                    <a href="${urlEditar}" class="btn btn-warning btn-sm me-3">Editar <i class="fa-solid fa-user-pen"></i> </a>

                    <c:set var="urlEliminar">
                        <c:url value="${application.contextPath}/eliminar">
                            <c:param name="idEmpleado" value="${empleado.idEmpleado}"/>
                        </c:url>
                    </c:set>
                    <a href="${urlEliminar}" class="btn btn-danger btn-sm me-3">Eliminar <i class="fa-solid fa-user-xmark"></i> </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@ include file="comunes/pie-pagina.jsp"%>