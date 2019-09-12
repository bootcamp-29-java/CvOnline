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
import models.WorkAssignment;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class WorkAssignmentController {

    private IGeneralDAO<WorkAssignment> igdao;
    private IGeneralDAO<Employee> igdao2;


    public WorkAssignmentController(SessionFactory factory) {
        igdao = new GeneralDAO<WorkAssignment>(factory, WorkAssignment.class);
        igdao2 = new GeneralDAO<Employee>(factory, Employee.class);
        
    }

    public List<WorkAssignment> getAll() {
        return igdao.getAll();
    }

    public WorkAssignment getById(String id) {
        return igdao.getById(id);
    }

    public String saveOrDelete(String id) {
        String result = "";
        WorkAssignment wa = new WorkAssignment();
        Employee employee = igdao2.getById(id);
        Date date = new Date(0);
        wa.setId(Integer.parseInt(id));
        wa.setCompany(result);
        wa.setPosition(result);
        wa.setJobDescription(result);
        wa.setStartDate(date);
        wa.setEndDate(date);
        wa.setEmployee(employee);        
        if (igdao.saveOrDelete(wa, true)) {
            result = "Data Berhasil Disimpan";
        } else {
            result = "Maaf Data Gagal Disimpan";
        }
        return result;
    }    
}
