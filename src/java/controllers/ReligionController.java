/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Religion;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class ReligionController implements IReligionController {
    
    private IGeneralDAO<Religion> igdao;     
    public ReligionController(SessionFactory factory) {
        igdao = new GeneralDAO<Religion>(factory, Religion.class);
        
    }

    
    @Override
    public List<Religion> getAll() {
        return igdao.getAll();
    }

    
    @Override
    public Religion getById(String id) {
        return igdao.getById(id);
    }
    
    @Override
    public Religion getByName(String name) {
        return igdao.getById(name);
    }
}
