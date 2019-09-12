/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.sql.Date;
import java.util.List;
import models.Employee;
import models.Organization;
import org.hibernate.SessionFactory;

/**
 *
 * @author hp
 */
public class OrganizationController {
     private IGeneralDAO<Organization> igdao;
     private IGeneralDAO<Employee> igdao2;
    public OrganizationController(SessionFactory factory) {
        igdao = new GeneralDAO<Organization>(factory, Organization.class);
        igdao2 = new GeneralDAO<>(factory, Employee.class);
    }

    
    public List<Organization> getAll() {
        return igdao.getAll();
    }

    
    public Organization getById(String id) {
        return igdao.getById(id);
    }
    
    public String save(String id) {
        String result = "";
        Organization organization = new Organization();
        Employee employee = igdao2.getById(id);
        Date date = new Date(0);
        organization.setId(Integer.parseInt(id));
        organization.setName(id);
        organization.setPosittion(result);
        organization.setStartPeriod(date);
        organization.setEndPeriod(date);
        organization.setEmployee(employee);
        if(igdao.saveOrDelete(organization, true)){
            result ="Data Berhasil Disimpan";
        }else{
            result ="Maaf Data Gagal Disimpan";
        }
        return result;
    }

}
