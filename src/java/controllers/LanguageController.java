/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Language;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class LanguageController {
  private IGeneralDAO<Language> igdao;     
    public LanguageController(SessionFactory factory) {
        igdao = new GeneralDAO<Language>(factory, Language.class);
        
    }

    
    
    public List<Language> getAll() {
        return igdao.getAll();
    }

    
    
    public Language getById(String id) {
        return igdao.getById(id);
    }    
}
