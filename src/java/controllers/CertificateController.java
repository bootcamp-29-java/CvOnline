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
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class CertificateController {
    
  private IGeneralDAO<Certificate> igdao;     
    public CertificateController(SessionFactory factory) {
        igdao = new GeneralDAO<Certificate>(factory, Certificate.class);
        
    }

    
    
    public List<Certificate> getAll() {
        return igdao.getAll();
    }

    public Certificate getById(String id) {
        return igdao.getById(id);
    }    
}
