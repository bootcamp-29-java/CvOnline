/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Major;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class MajorController {
      
    private IGeneralDAO<Major> igdao;     
    public MajorController(SessionFactory factory) {
        igdao = new GeneralDAO<Major>(factory, Major.class);
        
    }

    
    
    public List<Major> getAll() {
        return igdao.getAll();
    }

    
    
    public Major getById(String id) {
        return igdao.getById(id);
    }
  
}
