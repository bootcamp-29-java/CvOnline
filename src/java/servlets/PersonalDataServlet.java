/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.EmployeeController;
import controllers.MaritalController;
import controllers.ReligionController;
import icontrollers.IEmployeeController;
import icontrollers.IMaritalController;
import icontrollers.IReligionController;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
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
@WebServlet(name = "PersonalDataServlet", urlPatterns = {"/personaldataservlet"})
public class PersonalDataServlet extends HttpServlet {
    private String status;
    private String cv_status;
    private SessionFactory factory = HibernateUtil.getSessionFactory();
    private IEmployeeController iec = new EmployeeController(factory);
    private IReligionController irc = new ReligionController(factory);
    private IMaritalController imc = new MaritalController(factory);

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
            request.getSession().setAttribute("employees", iec.getAll());
            request.getSession().setAttribute("maritals", imc.getAll());
            request.getSession().setAttribute("religions", irc.getAll());
            request.getSession().setAttribute("employeeId", iec.genId());
            request.getSession().setAttribute("cv_status", "1");
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
        String id = request.getParameter("inputID");
        String email = request.getParameter("inputEmail");
        String firstname = request.getParameter("inputFirstName");
        String lastname = request.getParameter("inputLastName");
        String religion = request.getParameter("idReligion");
        String marital = request.getParameter("idMaritalStatus");
        String gMale = request.getParameter("genderMale");
        String gFemale = request.getParameter("genderFemale");
        String natWNI = request.getParameter("natWNI");
        String natWNA = request.getParameter("natWNA");
        String birthPlace = request.getParameter("inputBirthPlace");
        String birthDate = request.getParameter("inputBirthDate");
//        Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(birthDate);
        String gender = "";
        if (gMale!="") {
            gender = gMale;
        } else {
            gender = gFemale;
        }
        
        String national = "";
        if (natWNI!="") {
            national = natWNI;
        } else {
            national = natWNA;
        }
        
        status = iec.savePersonalData(id, religion, marital, firstname, lastname, email, birthPlace, birthDate, gender, national, null, false);
        
        if (status.equalsIgnoreCase("Save data berhasil")) {
            request.getSession().setAttribute("cv_status", "2");
            response.sendRedirect("curriculum-vitae.jsp");
        } else {
            request.getSession().setAttribute("status", "GAGAL");
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
