/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Marital;

/**
 *
 * @author hp
 */
public interface IMaritalController {

    List<Marital> getAll();

    Marital getById(String id);

    Marital getByName(String name);
    
}
