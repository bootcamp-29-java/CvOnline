/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

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
public class EmployeeLanguageController {

    private IGeneralDAO<EmployeeLanguage> igdao;
    private IGeneralDAO<Employee> igdao2;
    private IGeneralDAO<Language> ilang;

    public EmployeeLanguageController(SessionFactory factory) {
        igdao = new GeneralDAO<EmployeeLanguage>(factory, EmployeeLanguage.class);
        igdao2 = new GeneralDAO<Employee>(factory, Employee.class);
        ilang = new GeneralDAO<Language>(factory, Language.class);
    }

    public List<EmployeeLanguage> getAll() {
        return igdao.getAll();
    }

    public EmployeeLanguage getById(String id) {
        return igdao.getById(id);
    }

    public String saveOrDelete(String id) {
        String result = "";
        EmployeeLanguage language = new EmployeeLanguage();
        Employee employee = igdao2.getById(id);
        Language language1 = ilang.getById(id);
        language.setId(Integer.parseInt(id));
        language.setEmployee(employee);
        language.setLanguage(language1);
        if (igdao.saveOrDelete(language, true)) {
            result = "Data Berhasil Disimpan";
        } else {
            result = "Maaf Data Gagal Disimpan";
        }
        return result;
    }
}
