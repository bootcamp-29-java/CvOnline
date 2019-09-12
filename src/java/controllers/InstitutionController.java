/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.IInstitutionController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Institution;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class InstitutionController implements IInstitutionController {

  private IGeneralDAO<Institution> igdao;    
  
    public InstitutionController(SessionFactory factory) {
        igdao = new GeneralDAO<Institution>(factory, Institution.class);
    }
    
    @Override
    public List<Institution> getAll() {
        return igdao.getAll();
    }

    @Override
    public Institution getById(String id) {
        return igdao.getById(id);
    }        
}
