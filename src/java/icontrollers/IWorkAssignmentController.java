/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.WorkAssignment;

/**
 *
 * @author hp
 */
public interface IWorkAssignmentController {

    List<WorkAssignment> getAll();

    WorkAssignment getById(String id);

    String save(String company, String position, String jobDescription, String startDate, String endDate, String employee);
    
}
