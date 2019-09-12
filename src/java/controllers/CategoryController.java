/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.ICategoryController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Category;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class CategoryController implements ICategoryController {
      
    private IGeneralDAO<Category> igdao;     
    
    public CategoryController(SessionFactory factory) {
        igdao = new GeneralDAO<Category>(factory, Category.class);
    }
    
    @Override
    public List<Category> getAll() {
        return igdao.getAll();
    }
    
    @Override
    public Category getById(String id) {
        return igdao.getById(id);
    }
  
}
