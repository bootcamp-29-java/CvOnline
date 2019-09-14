/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.IMaritalController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Marital;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class MaritalController implements IMaritalController {
    
    private IGeneralDAO<Marital> igdao;
    
    public MaritalController(SessionFactory factory) {
        igdao = new GeneralDAO<Marital>(factory, Marital.class);
    }
    
    @Override
    public List<Marital> getAll() {
        return igdao.getAll();
    }

    
    @Override
    public Marital getById(String id) {
        return igdao.getById(id);
    }
    
    @Override
    public Marital getByName(String name) {
        return igdao.getById(name);
    }
}
