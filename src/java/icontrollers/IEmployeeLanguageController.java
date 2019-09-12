/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.EmployeeLanguage;

/**
 *
 * @author hp
 */
public interface IEmployeeLanguageController {

    List<EmployeeLanguage> getAll();

    EmployeeLanguage getById(String id);

    String save(String language, String employee);
    
}
