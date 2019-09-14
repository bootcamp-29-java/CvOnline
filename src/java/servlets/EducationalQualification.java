/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.DegreeController;
import controllers.EducationHistoryController;
import controllers.MajorController;
import controllers.UniversityController;
import icontrollers.IDegreeController;
import icontrollers.IEducationHistoryController;
import icontrollers.IMajorController;
import icontrollers.IUniversityController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.SessionFactory;
import tools.HibernateUtil;

/**
 *
 * @author hp
 */
@WebServlet(name = "EducationalQualification", urlPatterns = {"/educationalqualification"})
public class EducationalQualification extends HttpServlet {

    private String status;
    private String cv_status = "";
    private SessionFactory factory = HibernateUtil.getSessionFactory();
    private IEducationHistoryController iehc = new EducationHistoryController(factory);
    private IUniversityController iuc = new UniversityController(factory);
    private IDegreeController idc = new DegreeController(factory);
    private IMajorController imc = new MajorController(factory);
    

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
            request.getSession().setAttribute("cv_status", "3");
            request.getSession().setAttribute("universitys", iuc.getAll());
            request.getSession().setAttribute("degrees", idc.getAll());
            request.getSession().setAttribute("majors", imc.getAll());
            response.sendRedirect("curriculum-vitae.jsp");
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
        
        
//        status = iec.savePersonalData(id, religion, marital, firstname, lastname, email, birthPlace, birthDate, gender, national, null, false);
        
//        if (status.equalsIgnoreCase("Save data berhasil")) {
//            request.getSession().setAttribute("cv_status", "2");
//            response.sendRedirect("curriculum-vitae.jsp");
//        } else {
//            request.getSession().setAttribute("status", "GAGAL");
//        }
        
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
