/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.IOrganizationController;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import models.Employee;
import models.Organization;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class OrganizationController implements IOrganizationController {

    private IGeneralDAO<Organization> igdao;

    public OrganizationController(SessionFactory factory) {
        igdao = new GeneralDAO<Organization>(factory, Organization.class);
    }

    @Override
    public List<Organization> getAll() {
        return igdao.getAll();
    }

    @Override
    public Organization getById(String id) {
        return igdao.getById(id);
    }

    @Override
    public String save(String name, String position, String startPeriod, String endPeriod, String employee) {
        String result = "";

        try {
            Date speriod = new SimpleDateFormat("yyyy-MM-dd").parse(startPeriod);
            Date eperiod = new SimpleDateFormat("yyyy-MM-dd").parse(endPeriod);
            Organization organization = new Organization(name, position, speriod, eperiod, new Employee(employee));

            if (igdao.saveOrDelete(organization, true)) {
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
