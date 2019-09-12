/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.IUniversityController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.University;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class UniversityController implements IUniversityController {

    private IGeneralDAO<University> igdao;

    public UniversityController(SessionFactory factory) {
        igdao = new GeneralDAO<University>(factory, University.class);
    }

    @Override
    public List<University> getAll() {
        return igdao.getAll();
    }

    @Override
    public University getById(String id) {
        return igdao.getById(id);
    }

}
