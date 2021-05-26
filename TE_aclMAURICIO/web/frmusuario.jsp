<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>FORMULARION DE USUARIO</h1>
        <form action="UsuarioControlador" method="POST">
            <input type="hidden" name="id" value="${usuario.id}">
                <label for="" >Usuario</label>
                <input type="text" name="usuario" value="${usuario.usuarios}" placeholder="Escriba su usuario">                    
                <br>
                <label for="" >Correo Electrónico</label>
                <input type="email" name="correo" value="${usuario.correo}" placeholder="Escriba su correo electrónico">                    
                <br>
                <label for="" >Clave</label>
                <input type="text" name="clave" value="${usuario.clave}" placeholder="Escriba su clave">
                <br>
                <button type="submit">Enviar</button>
        </form>
    </body>
</html>
