/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Education;

/**
 *
 * @author hp
 */
public interface IEducationController {

    List<Education> getAll();

    Education getById(String id);
    //    public University  getUniversity(University university) {
    //        return university;
    //    }
    //
    //    public Degree getDegree(Degree degree) {
    //        return degree;
    //    }
    //
    //    public Major getMajor(Major major) {
    //        return major;
    //    }
    
}
