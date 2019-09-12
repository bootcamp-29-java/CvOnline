/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Category;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class CategoryController {
      
    private IGeneralDAO<Category> igdao;     
    public CategoryController(SessionFactory factory) {
        igdao = new GeneralDAO<Category>(factory, Category.class);
        
    }

    
    
    public List<Category> getAll() {
        return igdao.getAll();
    }

    
    
    public Category getById(String id) {
        return igdao.getById(id);
    }
  
}
