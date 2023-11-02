package FelipeLopez.Empleados.controlador;

import FelipeLopez.Empleados.modelo.Empleado;
import FelipeLopez.Empleados.servicio.EmpleadoServicio;
import jakarta.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.List;

@Controller
public class IndexControlador {
    private static final Logger logger =
            LoggerFactory.getLogger(IndexControlador.class);
    @Autowired
    EmpleadoServicio empleadoServicio;
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String iniciar(ModelMap modelo){
        List<Empleado> empleados = empleadoServicio.listarEmpleado();
        empleados.forEach(empleado -> logger.info(empleado.toString()));
        modelo.put("empleados",empleados);
        return "index";//index.jsp
    }
    @RequestMapping(value = "/agregar", method = RequestMethod.GET)
    public String mostrarAgregar(){
        return "agregar";//agregar.jsp

    }
    @RequestMapping(value = "/agregar", method = RequestMethod.POST)
    public String agregar(@ModelAttribute("empleadoForma")Empleado empleado){
        empleadoServicio.guardarEmpleado(empleado);
        return "redirect:/";//empleados.jsp
    }

}
