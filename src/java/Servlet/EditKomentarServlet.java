/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import Connection.Koneksi;
import Controller.KomentarController;
import Model.KomentarModel;
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
@WebServlet(name = "EditKomentarServlet", urlPatterns = {"/EditKomentarServlet"})
public class EditKomentarServlet extends HttpServlet {

    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditKomentarServlet</title>");
            out.println("</head>");
            out.println("<body>");

            //fetch data from the edit form
            int id = Integer.parseInt(request.getParameter("id"));
            String nama = request.getParameter("nama");
            String komentar = request.getParameter("komentar");        
            String bintang = request.getParameter("bintang");
            
            //create a book object and set those value to book object
            KomentarModel km = new KomentarModel();
            km.setNama(nama);
            km.setKomentar(komentar);
            km.setBintang(bintang);
            km.setId(id);
            
            //crete new komentarModel object
            KomentarController kc = new KomentarController(Koneksi.getCon());
            boolean success = kc.editCommentInfo(km);
            if(success) {
                out.println("Edited Successfully");
            }else{
                out.print("something wrong");
            }
            
             request.getRequestDispatcher("admincommentpage.jsp").forward(request, response);
    } catch (Exception e) {
        e.printStackTrace();
    }
}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
