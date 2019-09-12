/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.GeneralDAO;
import icontrollers.ITrainingController;
import idaos.IGeneralDAO;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import models.Employee;
import models.Training;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class TrainingController implements ITrainingController {
 private IGeneralDAO<Training> igdao;
    private SessionFactory factory;

    public TrainingController(SessionFactory factory) {
        igdao = new GeneralDAO<>(factory, Training.class);
    }
    
    public List<Training> getAll(){
        return igdao.getAll();
    }
    
    public Training getById(String id){
        return igdao.getById(id);
    }
    
    public String save(String name, String start_date, String end_date, String employee){
        String result = "";
        try {
            Date sdate = new SimpleDateFormat("yyyy-MM-dd").parse(start_date);
            Date edate = new SimpleDateFormat("yyyy-MM-dd").parse(end_date);
            Training project = new Training(name, sdate, edate, new Employee(employee));
            
            if (igdao.saveOrDelete(project, true)) {
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
