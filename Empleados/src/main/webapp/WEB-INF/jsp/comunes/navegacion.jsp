<!-- urls de la aplicacion -->
<c:set var="urlInicio">
    <c:url value="${application.contextPath}/"/>
</c:set>

<c:set var="urlAgregar">
    <c:url value="${application.contextPath}/agregar"/>
</c:set>


<div class="container">
    <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="${urlInicio}">Sistema de Empleados <i class="fa-solid fa-people-group"></i> </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${urlInicio}">Inicio <i class="fa-solid fa-house-user" style="color: #ffffff;"></i> </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${urlAgregar}">Agregar Empleado <i class="fa-solid fa-user-plus" style="color: #ffffff;"></i> </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<br>
