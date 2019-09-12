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
import models.Award;
import models.Employee;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class AwardController {
    
    private IGeneralDAO<Award> igdao;
     private IGeneralDAO<Employee> igdao2;
    public AwardController(SessionFactory factory) {
        igdao = new GeneralDAO<Award>(factory, Award.class);
        igdao2 = new GeneralDAO<>(factory, Employee.class);
    }

    
    public List<Award> getAll() {
        return igdao.getAll();
    }

    
    public Award getById(String id) {
        return igdao.getById(id);
    }
    
    public String save(String id,String name, String date1) {
        String result = "";
        Award award = new Award();
        Employee employee = igdao2.getById(id);
        Date date = new Date(0);
        award.setId(Integer.parseInt(id));
        award.setName(name);
        award.setDate(date1);
        award.setEmployee(employee);
        if(igdao.saveOrDelete(award, true)){
            result ="Data Berhasil Disimpan";
        }else{
            result ="Maaf Data Gagal Disimpan";
        }
        return result;
    }
    
}
