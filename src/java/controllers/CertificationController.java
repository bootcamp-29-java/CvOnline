/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.ICertificationController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Certificate;
import models.Certification;
import models.Employee;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class CertificationController implements ICertificationController {
    
    private IGeneralDAO<Certification> igdao;
     
    public CertificationController(SessionFactory factory) {
        igdao = new GeneralDAO<Certification>(factory, Certification.class);
    }

    
    @Override
    public List<Certification> getAll() {
        return igdao.getAll();
    }

    
    @Override
    public Certification getById(String id) {
        return igdao.getById(id);
    }
    
    @Override
    public String save(String code, byte[] attachment,String certificate, String employee) {
        String result = "";
        try {
            Certification certification = new Certification(code, attachment, new Certificate(Integer.parseInt(certificate)), new Employee(employee));
            
            if (igdao.saveOrDelete(certification, true)) {
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
