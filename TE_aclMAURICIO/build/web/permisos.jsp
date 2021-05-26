
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tabla de Permisos</h1>
        <a href="PermisosControlador?action=add">Nuevo </a>
        <br><br>
        <table border="1" cellspacing="0" cellpadding="2">
            <tr>
                <th>IS</th>
                <th>ID UUSUARIO</th>
                <th>ID ROLES</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${per}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.id_usuario}</td>
                    <td>${item.id_roles}</td>
                    <td><a href="PermisosControlador?action=edit&id=${item.id}">Editar</td>
                    <td><a href="PermisosControlador?action=delete&id=${item.id}">Eliminar</td>
                </tr>
            </c:forEach>
        </table>
        
        <li><a href="RolControlador">mostrar tabla de roles</a></li>
        <li><a href="UsuarioControlador">mostrar tabla de usuario</a></li>
    </body>
</html>
