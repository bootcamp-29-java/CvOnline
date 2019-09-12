/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.IEducationHistoryController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Education;
import models.EducationHistory;
import models.Employee;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class EducationHistoryController implements IEducationHistoryController {

    private IGeneralDAO<EducationHistory> igdao;

    public EducationHistoryController(SessionFactory factory) {
        igdao = new GeneralDAO<EducationHistory>(factory, EducationHistory.class);
    }

    @Override
    public List<EducationHistory> getAll() {
        return igdao.getAll();
    }

    @Override
    public EducationHistory getById(String id) {
        return igdao.getById(id);
    }

    @Override
    public String save(String gpa, byte[] attachment, String education, String employee) {
        String result = "";
        try {
            EducationHistory eh = new EducationHistory(gpa, attachment, new Education(Integer.parseInt(gpa)), new Employee(employee));

            if (igdao.saveOrDelete(eh, true)) {
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
