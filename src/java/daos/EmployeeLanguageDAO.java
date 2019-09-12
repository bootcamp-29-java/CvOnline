/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.util.ArrayList;
import java.util.List;
import models.EmployeeLanguage;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import idaos.IEmployeeLanguageDAO;

/**
 *
 * @author hp
 */
public class EmployeeLanguageDAO implements IEmployeeLanguageDAO {
    private SessionFactory factory;
    private Transaction transaction;
    private Session session;
    private Query query;
    
    public EmployeeLanguageDAO(SessionFactory factory) {
        this.factory = factory;
    }
    
    @Override
    public List<EmployeeLanguage> getEmployeeLanguage(String id){
        List<EmployeeLanguage> employeeLanguages = new ArrayList<>();
        try {
            session = factory.openSession();
            transaction = session.beginTransaction();
            
            query = session.createQuery("FROM EmployeeLanguage WHERE employee.id=:id");
            query.setParameter("id", id);
            employeeLanguages = query.list();
            
        } catch (Exception e) {
            e.getStackTrace();
            if (transaction!=null) {
                transaction.rollback();
            }
        }finally{
            session.close();
        }
        return employeeLanguages;
    }
}
