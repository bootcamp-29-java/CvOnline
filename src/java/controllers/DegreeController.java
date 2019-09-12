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
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class DegreeController {
      
    private IGeneralDAO<Degree> igdao;     
    public DegreeController(SessionFactory factory) {
        igdao = new GeneralDAO<Degree>(factory, Degree.class);
        
    }

    
    
    public List<Degree> getAll() {
        return igdao.getAll();
    }

    
    
    public Degree getById(String id) {
        return igdao.getById(id);
    }
  
    
}
