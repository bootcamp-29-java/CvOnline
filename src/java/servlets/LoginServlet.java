/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.EmployeeRoleController;
import controllers.LoginRegisterController;
import icontrollers.ILoginRegisterController;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Account;
import models.EmployeeRole;
import org.hibernate.SessionFactory;
import tools.HibernateUtil;

/**
 *
 * @author Wehijin
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/loginservlet"})
public class LoginServlet extends HttpServlet {
    
    private SessionFactory factory = HibernateUtil.getSessionFactory();
    private ILoginRegisterController ilrc = new LoginRegisterController(factory);
    private EmployeeRoleController erc = new EmployeeRoleController(factory);
    private String status;

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String action = request.getParameter("action");
        HttpSession session = request.getSession(true);
        if (action.equalsIgnoreCase("logout")) {
            session.getAttribute("sessionlogin");
            session.invalidate();
            request.getSession().setAttribute("status", "Anda Telah Logout");
            response.sendRedirect("login.jsp");
        }
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
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        status = ilrc.login(email, password);
        List<String> sessionRole = new ArrayList<>();
        for (EmployeeRole empl : erc.getById(email)) {
            sessionRole.add(String.valueOf(empl.getRole().getId()));
        }
        if (status.equalsIgnoreCase("Login Berhasil") && sessionRole != null) {
            request.getSession().setAttribute("sessionlogin", sessionRole);
            request.getSession().setAttribute("status", status);
            Account account = ilrc.getByEmail(email);
            request.getSession().setAttribute("nik", account.getId());
            request.getSession().setAttribute("sessionId", account.getId());
            response.sendRedirect("employeeservlet");
        } else {
            request.getSession().setAttribute("status", status);
            response.sendRedirect("login.jsp");
        }
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
