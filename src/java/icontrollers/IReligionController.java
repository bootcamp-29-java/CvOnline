/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Religion;

/**
 *
 * @author hp
 */
public interface IReligionController {

    List<Religion> getAll();

    public Religion getByName(String name);

    Religion getById(String id);

}
