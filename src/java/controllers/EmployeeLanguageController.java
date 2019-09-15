/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.IEmployeeLanguageController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Employee;
import models.EmployeeLanguage;
import models.Language;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class EmployeeLanguageController implements IEmployeeLanguageController {

    private IGeneralDAO<EmployeeLanguage> igdao;

    public EmployeeLanguageController(SessionFactory factory) {
        igdao = new GeneralDAO<EmployeeLanguage>(factory, EmployeeLanguage.class);
    }

    @Override
    public List<EmployeeLanguage> getAll() {
        return igdao.getAll();
    }

    @Override
    public EmployeeLanguage getById(String id) {
        return igdao.getById(id);
    }

    @Override
    public String save(String employee, String language) {
        String result = "";
        try {
            EmployeeLanguage el = new EmployeeLanguage(new Employee(employee), new Language(language));
            
            if (igdao.saveOrDelete(el, true)) {
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
