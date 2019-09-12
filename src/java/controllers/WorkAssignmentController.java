/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.IWorkAssignmentController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import models.Employee;
import models.WorkAssignment;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class WorkAssignmentController implements IWorkAssignmentController {

    private IGeneralDAO<WorkAssignment> igdao;


    public WorkAssignmentController(SessionFactory factory) {
        igdao = new GeneralDAO<WorkAssignment>(factory, WorkAssignment.class);
    }

    @Override
    public List<WorkAssignment> getAll() {
        return igdao.getAll();
    }

    @Override
    public WorkAssignment getById(String id) {
        return igdao.getById(id);
    }

    @Override
    public String saveOrDelete(String company, String jobDescription,String startDate,String endDate,String employee) {
        String result = "";
        try {
            Date sdate = new SimpleDateFormat("yyyy-MM-dd").parse(startDate);
            Date edate = new SimpleDateFormat("yyyy-MM-dd").parse(endDate);
            WorkAssignment wa = new WorkAssignment(company, jobDescription, sdate, edate, new Employee(employee));
            
            if (igdao.saveOrDelete(wa, true)) {
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
