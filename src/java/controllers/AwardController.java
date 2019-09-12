/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.IAwardController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.sql.Date;
import java.util.List;
import models.Award;
import models.Employee;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class AwardController implements IAwardController {
    
    private IGeneralDAO<Award> igdao;
    
    public AwardController(SessionFactory factory) {
        igdao = new GeneralDAO<Award>(factory, Award.class);
    }

    @Override
    public List<Award> getAll() {
        return igdao.getAll();
    }
    
    @Override
    public Award getById(String id) {
        return igdao.getById(id);
    }
    
    @Override
    public String save(String name,String date, String employee) {
        String result = "";
        try {
            Award award = new Award(name, date, new Employee(employee));
            
            if (igdao.saveOrDelete(award, true)) {
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
