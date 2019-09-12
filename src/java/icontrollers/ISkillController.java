/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Skill;

/**
 *
 * @author hp
 */
public interface ISkillController {

    List<Skill> getAll();

    Skill getById(String id);
    //    public Category getCategory(Category category){
    //        return category;
    //    }
    
}
