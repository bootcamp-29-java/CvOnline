/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.ICertificateController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Certificate;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class CertificateController implements ICertificateController {

    private IGeneralDAO<Certificate> igdao;

    public CertificateController(SessionFactory factory) {
        igdao = new GeneralDAO<Certificate>(factory, Certificate.class);
    }

    @Override
    public List<Certificate> getAll() {
        return igdao.getAll();
    }

    @Override
    public Certificate getById(String id) {
        return igdao.getById(id);
    }
    
}
