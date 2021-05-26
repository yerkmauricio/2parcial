<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>FORMULARIO PERMISO </h1>
        <form action="PermisosControlador" method="POST">
            <input type="hidden" name="id" value="${per.id}">
                <label for="" >Id Usuarios</label>
                <input type="text" name="usuario" value="${per.id_usuario}" placeholder="Escriba su usuario">                    
                <br>
                <label for="" >Id Roles</label>
                <input type="text" name="rol" value="${per.id_roles}" placeholder="Escriba su usuario">                    
                <br>
                <button type="submit">Enviar</button>
        </form>
    </body>
</html>
