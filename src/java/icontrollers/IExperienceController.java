/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Experience;

/**
 *
 * @author hp
 */
public interface IExperienceController {

    List<Experience> getAll();

    Experience getById(String id);

    String save(String name, String date, String employee);
    
}
