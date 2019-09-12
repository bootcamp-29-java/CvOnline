/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

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
public class CertificationController {
    
    private IGeneralDAO<Certification> igdao;
     private IGeneralDAO<Employee> igdao2;
    public CertificationController(SessionFactory factory) {
        igdao = new GeneralDAO<Certification>(factory, Certification.class);
        igdao2 = new GeneralDAO<>(factory, Employee.class);
    }

    
    public List<Certification> getAll() {
        return igdao.getAll();
    }

    
    public Certification getById(String id) {
        return igdao.getById(id);
    }
    
    public String save(String id, String date1) {
        String result = "";
        Certification certification = new Certification();
        Certificate certificate = new Certificate();
        Employee employee = igdao2.getById(id);
        
        certification.setId(Integer.parseInt(id));
        certification.setAttachment(attachment);
        certification.setCode(id);
        certification.setEmployee(employee);
        certification.setCertificate(certificate);
        
        if(igdao.saveOrDelete(certification, true)){
            result ="Data Berhasil Disimpan";
        }else{
            result ="Maaf Data Gagal Disimpan";
        }
        return result;
    }
    
}
