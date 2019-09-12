/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.IMajorController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.util.List;
import models.Major;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class MajorController implements IMajorController {

    private IGeneralDAO<Major> igdao;

    public MajorController(SessionFactory factory) {
        igdao = new GeneralDAO<Major>(factory, Major.class);
    }

    @Override
    public List<Major> getAll() {
        return igdao.getAll();
    }

    @Override
    public Major getById(String id) {
        return igdao.getById(id);
    }

}
