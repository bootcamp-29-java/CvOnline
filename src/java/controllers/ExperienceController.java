/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.sql.Date;
import java.util.List;
import models.Employee;
import models.Experience;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class ExperienceController {
    private IGeneralDAO<Experience> igdao;
     private IGeneralDAO<Employee> igdao2;
    public ExperienceController(SessionFactory factory) {
        igdao = new GeneralDAO<Experience>(factory, Experience.class);
        igdao2 = new GeneralDAO<>(factory, Employee.class);
    }

    
    public List<Experience> getAll() {
        return igdao.getAll();
    }

    
    public Experience getById(String id) {
        return igdao.getById(id);
    }
    
    public String save(String id, String date1) {
        String result = "";
        Experience experience = new Experience();
        Employee employee = igdao2.getById(id);
        Date date = new Date(0);
        experience.setId(Integer.parseInt(id));
        experience.setName(id);
        experience.setDate(date1);
        experience.setEmployee(employee);        
        if(igdao.saveOrDelete(experience, true)){
            result ="Data Berhasil Disimpan";
        }else{
            result ="Maaf Data Gagal Disimpan";
        }
        return result;
    }
}
