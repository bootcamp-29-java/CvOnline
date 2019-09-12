/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.GeneralDAO;
import icontrollers.IProjectController;
import idaos.IGeneralDAO;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import models.Employee;
import models.Project;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class ProjectController implements IProjectController {
    private IGeneralDAO<Project> igdao;
    private SessionFactory factory;

    public ProjectController(SessionFactory factory) {
        igdao = new GeneralDAO<Project>(factory, Project.class);
    }
    
    @Override
    public List<Project> getAll(){
        return igdao.getAll();
    }
    
    @Override
    public Project getById(String id){
        return igdao.getById(id);
    }
    
    @Override
    public String save(String name, String start_date, String end_date, String description, String employee){
        String result = "";
        
        try {
            Date sdate = new SimpleDateFormat("yyyy-MM-dd").parse(start_date);
            Date edate = new SimpleDateFormat("yyyy-MM-dd").parse(end_date);
            Project project = new Project(name, sdate, edate, description, new Employee(employee));
            
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
