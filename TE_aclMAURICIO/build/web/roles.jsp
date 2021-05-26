
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tabla de Roles</h1>
        <a href="RolControlador?action=add">Nuevo </a>
        <br><br>
        <table border="1" cellspacing="0" cellpadding="2">
            <tr>
                <th>ID</th>
                <th>DESCRIPCION</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${rol}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td><a href="RolControlador?action=edit&id=${item.id}">Editar</td>
                    <td><a href="RolControlador?action=delete&id=${item.id}">Eliminar</td>
                </tr>
            </c:forEach>
        </table>
         <li><a href="PermisosControlador">mostrar tabla de permisos</a></li>
        <li><a href="UsuarioControlador">mostrar tabla de usuario</a></li>
    </body>
</html>
