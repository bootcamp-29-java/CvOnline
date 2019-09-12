/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Project;

/**
 *
 * @author hp
 */
public interface IProjectController {

    List<Project> getAll();

    Project getById(String id);

    String save(String name, String start_date, String end_date, String description, String employee);
    
}
