/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Language;

/**
 *
 * @author hp
 */
public interface ILanguageController {

    List<Language> getAll();

    Language getById(String id);
    
}
