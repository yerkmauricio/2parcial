<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>FORMULARIO ROLES</h1>
        <form action="RolControlador" method="POST">
            <input type="hidden" name="id" value="${rol.id}">
                <label for="" >Descripcion</label>
                <input type="text" name="descripcion" value="${rol.descripcion}" placeholder="Escriba su usuario">                    
                <br>
                <button type="submit">Enviar</button>
        </form>
    </body>
</html>
