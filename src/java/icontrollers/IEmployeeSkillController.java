/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.EmployeeSkill;

/**
 *
 * @author hp
 */
public interface IEmployeeSkillController {

    List<EmployeeSkill> getAll();

    EmployeeSkill getById(String id);

    String save(int score, String skill, String employee);
    
}
