/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icontrollers;

import java.util.List;
import models.Certificate;

/**
 *
 * @author hp
 */
public interface ICertificateController {

    List<Certificate> getAll();

    Certificate getById(String id);
    
}
