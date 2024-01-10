package Servlet;

import Connection.Koneksi;
import Controller.AlbumController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "HapusAlbumServlet", urlPatterns = {"/HapusAlbumServlet"})
public class HapusAlbumServlet extends HttpServlet {

    private static String deleteAlbum = "./adminalbumpage2.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HapusAlbumServlet</title>");
            out.println("</head>");
            out.println("<body>");

            int id = Integer.parseInt(request.getParameter("idalbum"));

            try {
                AlbumController acr = new AlbumController(Koneksi.getCon());
                acr.deleteAlbum(id);
                response.sendRedirect("adminalbumpage2.jsp");
            } catch (Exception e) {
                e.printStackTrace();
            }

            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
