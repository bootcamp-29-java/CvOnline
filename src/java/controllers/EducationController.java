/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Degree;
import models.Education;
import models.Major;
import models.University;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class EducationController {
      
    private IGeneralDAO<Education> igdao;     
    private IGeneralDAO<University> igdao2;     
    private IGeneralDAO<Degree> igdao3;     
    private IGeneralDAO<Major> igdao4;     
    public EducationController(SessionFactory factory) {
        igdao = new GeneralDAO<Education>(factory, Education.class);
        
    }
    
    
    public List<Education> getAll() {
        return igdao.getAll();
    }

   
    public Education getById(String id) {
        return igdao.getById(id);
    }
    public University  getUniversity(University university) {
        return university;
    }
    public Degree getDegree(Degree degree) {
        return degree;
    }
    public Major getMajor(Major major) {
        return major;
    }
    
}
