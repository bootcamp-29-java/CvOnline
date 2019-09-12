/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Institution;

/**
 *
 * @author hp
 */
public interface IInstitutionController {

    List<Institution> getAll();

    Institution getById(String id);
    
}
