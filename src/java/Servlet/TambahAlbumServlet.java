/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import Connection.Koneksi;
import Controller.AlbumController;
import Model.AlbumModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aldys
 */
@WebServlet(name = "TambahAlbumServlet", urlPatterns = {"/TambahAlbumServlet"})
public class TambahAlbumServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TambahAlbumServlet</title>");
            out.println("</head>");
            out.println("<body>");

            String judulAlbum = request.getParameter("judul");
            String deskripsiAlbum = request.getParameter("deskripsi");
            String tahunRilis = request.getParameter("tahun");
            String linkAlbum = request.getParameter("link");

            AlbumModel albumModel = new AlbumModel(judulAlbum, deskripsiAlbum, tahunRilis, linkAlbum);
            try {
                AlbumController albumController = new AlbumController(Koneksi.getCon());
                if (albumController.addAlbum(albumModel)) {
                    response.sendRedirect("adminalbumpage2.jsp");
                } else {
                    out.print("terjadi kesalahan");
                }

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

