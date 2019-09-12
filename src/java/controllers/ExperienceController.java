/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.IExperienceController;
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
public class ExperienceController implements IExperienceController {
    private IGeneralDAO<Experience> igdao;
    
    public ExperienceController(SessionFactory factory) {
        igdao = new GeneralDAO<Experience>(factory, Experience.class);
    }
    
    @Override
    public List<Experience> getAll() {
        return igdao.getAll();
    }
    
    @Override
    public Experience getById(String id) {
        return igdao.getById(id);
    }
    
    @Override
    public String save(String name, String date, String employee) {
        String result = "";
        try {
            Experience experience = new Experience(name, date, new Employee(employee));
            
            if (igdao.saveOrDelete(experience, true)) {
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
