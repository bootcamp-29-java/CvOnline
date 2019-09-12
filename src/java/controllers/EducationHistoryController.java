/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.EducationHistory;
import models.Employee;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class EducationHistoryController {
     private IGeneralDAO<EducationHistory> igdao;
     private IGeneralDAO<Employee> igdao2;
    public EducationHistoryController(SessionFactory factory) {
        igdao = new GeneralDAO<EducationHistory>(factory, EducationHistory.class);
        igdao2 = new GeneralDAO<>(factory, Employee.class);
    }

    
    public List<EducationHistory> getAll() {
        return igdao.getAll();
    }

    
    public EducationHistory getById(String id) {
        return igdao.getById(id);
    }
    
    public String save(String id, String gpa, String attachment) {
        String result = "";
        EducationHistory history = new EducationHistory();
        Employee employee = igdao2.getById(id);
        history.setId(Integer.parseInt(id));
        history.setGpa(gpa);
        history.setAttachment(attachment);
        history.setEmployee(employee);
        if(igdao.saveOrDelete(history, true)){
            result ="Data Berhasil Disimpan";
        }else{
            result ="Maaf Data Gagal Disimpan";
        }
        return result;
    }

    
}
