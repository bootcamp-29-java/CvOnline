/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.ISkillController;
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
public class SkillController implements ISkillController {
     private IGeneralDAO<Skill> igdao;
      
    public SkillController(SessionFactory factory) {
        igdao = new GeneralDAO<Skill>(factory, Skill.class);
    }
 
    @Override
    public List<Skill> getAll() {
        return igdao.getAll();
    }   
    
    @Override
    public Skill getById(String id) {
        return igdao.getById(id);
    }
    
//    public Category getCategory(Category category){
//        return category;
//    }
}
