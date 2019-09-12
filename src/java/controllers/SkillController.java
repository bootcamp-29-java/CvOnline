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
import models.Skill;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class SkillController {
      private IGeneralDAO<Skill> igdao;     
    public SkillController(SessionFactory factory) {
        igdao = new GeneralDAO<Skill>(factory, Skill.class);
        
    }

    
    
    public List<Skill> getAll() {
        return igdao.getAll();
    }

    
    
    public Skill getById(String id) {
        return igdao.getById(id);
    }
    
    
    public Category getCategory(Category category){
        return category;
    }
}
