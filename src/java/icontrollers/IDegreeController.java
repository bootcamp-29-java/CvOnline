/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Degree;

/**
 *
 * @author hp
 */
public interface IDegreeController {

    List<Degree> getAll();

    Degree getById(String id);
    
}
