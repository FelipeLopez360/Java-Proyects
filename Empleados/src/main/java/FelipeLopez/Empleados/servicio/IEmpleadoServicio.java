package FelipeLopez.Empleados.servicio;

import FelipeLopez.Empleados.modelo.Empleado;

import java.util.List;

public interface IEmpleadoServicio {
    public List<Empleado> listarEmpleado();

    public Empleado buscarEmpleadoPorId (Integer idEmpleado);

    public void guardarEmpleado(Empleado empleado);

    public void eliminarEmpleado(Empleado empleado);

}
