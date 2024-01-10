/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import Controller.loginModel;
import Controller.login;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name = "LoginServlet", value = "/adminlogin")
public class loginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        loginModel loginModel = new loginModel();
        loginModel.setUsername(username);
        loginModel.setPassword(password);

        login login = new login();

        if (username.equals("admin") && password.equals("admin")) {
            response.sendRedirect("admincommentpage.jsp");
        } else if (login.validate(loginModel)) {
            response.sendRedirect("index.jsp");
        } else {
            String errorMessage = "Wrong username or password";
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
        }
    }


}

