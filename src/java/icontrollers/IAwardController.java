/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Award;

/**
 *
 * @author hp
 */
public interface IAwardController {

    List<Award> getAll();

    Award getById(String id);

    String save(String name, String date, String employee);
    
}
