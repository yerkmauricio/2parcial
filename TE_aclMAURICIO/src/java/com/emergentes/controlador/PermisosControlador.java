package com.emergentes.controlador;

import com.emergentes.dao.PermisosDAO;
import com.emergentes.dao.PermisosDAOimpl;
import com.emergentes.modelo.Permisos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PermisosControlador", urlPatterns = {"/PermisosControlador"})
public class PermisosControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            Permisos per = new Permisos();
            int id;
            PermisosDAO dao = new PermisosDAOimpl();
            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";
            
            switch(action){
                case "add":
                    request.setAttribute("per", per);
                    request.getRequestDispatcher("frmpermisos.jsp").forward(request, response);
                    break;
                case "edit":
                    id = Integer.parseInt(request.getParameter("id"));
                    per =  dao.getById(id);
                    request.setAttribute("per", per);
                    request.getRequestDispatcher("frmpermisos.jsp").forward(request, response);
                    break;
                case "delete":
                    id = Integer.parseInt(request.getParameter("id"));
                    dao.delete(id);
                    response.sendRedirect("PermisosControlador");
                    break;
                case "view":
                    List<Permisos> lista = dao.getAll();
                    request.setAttribute("per",lista);
                    request.getRequestDispatcher("permisos.jsp").forward(request, response);
                    break;
            }
            
        }catch(Exception ex){
            System.out.println("Error en doGET: " + ex.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String usuario = request.getParameter("usuario");
        String rol = request.getParameter("rol");
        
        Permisos per = new Permisos();
        
        per.setId(id);
        per.setId_usuario(Integer.getInteger(usuario));
        per.setId_roles(Integer.getInteger(rol));
        
        PermisosDAO dao = new PermisosDAOimpl();
        if (id == 0){
            try {
                // Nuevo registro
                dao.insert(per);
            } catch (Exception ex) {
                System.out.println("Error al insertar "+ex.getMessage());
            }
        }
        else{
            try {
                // Edicion de registro
                dao.update(per);
            } catch (Exception ex) {
                System.out.println("Error al editar "+ex.getMessage());
            }
        }
        response.sendRedirect("PermisosControlador");
    }
}
