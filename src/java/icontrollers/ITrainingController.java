/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Training;

/**
 *
 * @author hp
 */
public interface ITrainingController {

    List<Training> getAll();

    Training getById(String id);

    String save(String name, String start_date, String end_date, String employee);
    
}
