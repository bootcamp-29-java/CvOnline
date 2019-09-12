/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.EducationHistory;

/**
 *
 * @author hp
 */
public interface IEducationHistoryController {

    List<EducationHistory> getAll();

    EducationHistory getById(String id);

    String save(String gpa, byte[] attachment, String education, String employee);
    
}
