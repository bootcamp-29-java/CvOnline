/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.util.List;
import models.EmployeeRole;
import models.Role;

/**
 *
 * @author hp
 */
public interface IEmployeeRoleController {

    List<Role> getAll();

    List<EmployeeRole> getById(String id);

    String save(String employee, String role);
    
}
