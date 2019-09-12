/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

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
public class EmployeeSkillCotroller {
    private IGeneralDAO<EmployeeSkill> igdao;
    private IGeneralDAO<Employee> igdao2;

    public EmployeeSkillCotroller(SessionFactory factory) {
        igdao = new GeneralDAO<EmployeeSkill>(factory, EmployeeSkill.class);
        igdao2 = new GeneralDAO<>(factory, Employee.class);
    }

    
    public List<EmployeeSkill> getAll() {
        return igdao.getAll();
    }

    
    public EmployeeSkill getById(String id) {
        return igdao.getById(id);
    }   
     public String saveOrDelete(String id, String score, Skill skill) {
        String result = "";
        EmployeeSkill employeeSkill = new EmployeeSkill(); 
        Employee employee = igdao2.getById(id);
        employeeSkill.setId(Integer.parseInt(id));
        employeeSkill.setScore(0);
        employeeSkill.setSkill(skill);
        employeeSkill.setEmployee(employee);
        if(igdao.saveOrDelete(employeeSkill, true)){
            result ="Data Berhasil Disimpan";
        }else{
            result ="Maaf Data Gagal Disimpan";
        }
        return result;
    }
}
