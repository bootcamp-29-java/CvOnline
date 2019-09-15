/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import icontrollers.IEmployeeRoleController;
import daos.EmployeeRoleDAO;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import idaos.IRoleDAO;
import java.util.List;
import models.Employee;
import models.EmployeeRole;
import models.Role;
import org.hibernate.SessionFactory;

/**
 *
 * @author Lenovo
 */
public class EmployeeRoleController implements IEmployeeRoleController {
    private SessionFactory factory;
    private IRoleDAO irdao;
    private IGeneralDAO<Role> emAO;
    private IGeneralDAO<Employee> eAO;
    private IGeneralDAO<EmployeeRole> eDAO;

    public EmployeeRoleController(SessionFactory factory) {
        irdao = new EmployeeRoleDAO(factory);
        emAO  = new GeneralDAO<>(factory, Role.class);
        eAO  = new GeneralDAO<>(factory, Employee.class);
        eDAO  = new GeneralDAO<>(factory, EmployeeRole.class);
    }
    
    @Override
    public List<EmployeeRole> getById(String id){
        return irdao.getByEmployee(id);
    }
    
    @Override
    public String save(String employee, String role){
        String result = "";
        Employee emp = eAO.getById(employee);
        Role ro = emAO.getById(role);
        EmployeeRole employeeRole = new EmployeeRole(emp, ro);
        if (eDAO.saveOrDelete(employeeRole, true)) {
            result = "Data Berhasil Disimpan";
        }else{
            result = "Data Gagal Disimpan";
        }
        return result;
    }
    
    @Override
    public List<Role> getAll(){
        return emAO.getAll();
    }
    
}
