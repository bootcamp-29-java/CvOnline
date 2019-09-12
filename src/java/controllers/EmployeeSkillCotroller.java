/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.IEmployeeSkillController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Employee;
import models.EmployeeSkill;
import models.Skill;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class EmployeeSkillCotroller implements IEmployeeSkillController {
    private IGeneralDAO<EmployeeSkill> igdao;

    public EmployeeSkillCotroller(SessionFactory factory) {
        igdao = new GeneralDAO<EmployeeSkill>(factory, EmployeeSkill.class);
    }
    
    @Override
    public List<EmployeeSkill> getAll() {
        return igdao.getAll();
    }
    
    @Override
    public EmployeeSkill getById(String id) {
        return igdao.getById(id);
    }   
    @Override
     public String save(int score, String skill, String employee) {
        String result = "";
        try {
            EmployeeSkill el = new EmployeeSkill(score, new Skill(Integer.parseInt(skill)), new Employee(employee));
            
            if (igdao.saveOrDelete(el, true)) {
                result = "Save data berhasil";
            } else {
                result = "Save data gagal";
            }
        } catch (Exception e) {
            result = "Save data error";
        }
        return result;
    }
}
