<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
    <head>
        <title>Listado de alumnos</title>
    </head>
    <body>
        <table border="1">
            <caption>
                Listar Alumnos
            </caption>
            <tr>
                <th>Alumnos ID</th>
                <th>Nombre</th>
                <th>Domicilio</th>
                <th>Email</th>
                <th>Telefono</th>
            </tr>
            <c:forEach var="alumno" items="${alumnos}">
                <tr>
                    <td>${alumno.idAlumno}</td>
                    <td>${alumno.nombre} ${alumno.apellido}</td>
                    <td>${alumno.domicilio.calle} ${alumno.domiclio.noCalle} ${alumno.domicilio.pais}</td>
                    <td>${alumno.contacto.email}</td>
                    <td>${alumno.contacto.telefono}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
