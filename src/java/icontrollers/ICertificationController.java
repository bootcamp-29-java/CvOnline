/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Certification;

/**
 *
 * @author hp
 */
public interface ICertificationController {

    List<Certification> getAll();

    Certification getById(String id);

    String save(String code, byte[] attachment, String certificate, String employee);
    
}
