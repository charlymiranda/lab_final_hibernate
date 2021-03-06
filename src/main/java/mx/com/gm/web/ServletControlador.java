package mx.com.gm.web;

import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import mx.com.gm.domain.Alumno;
import mx.com.gm.servicio.ServicioAlumno;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response){
        /*este metodo se conecta con nuestro servicios de alumnos*/
        ServicioAlumno servicioAlumno = new ServicioAlumno();
        
        List<Alumno> alumnos = servicioAlumno.listarAlumnos();
        
        /*compartimos esto para que lo pueda leer el JSP*/
        
        request.setAttribute("alumnos", alumnos);
        
        try {
            /*redirigimos a una vista*/
            request.getRequestDispatcher("/WEB-INF/listarAlumnos.jsp").forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
    }
}
