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

/**
 *
 * @author hp
 */
public class EmployeLanguageDAO {

    private SessionFactory factory;
    private Session session;
    private Transaction transaction;
    private Query query;

    public EmployeLanguageDAO(SessionFactory factory) {
        this.factory = factory;
    }
    
    public List<EmployeeLanguage> getEmployeLang(String id){
         List<EmployeeLanguage> els = new ArrayList<>();
        try {
            session = factory.openSession();
            transaction = session.beginTransaction();
            query = session.createQuery("FROM EmployeeLanguage WHERE employee.id=:id");
            query.setParameter("id", id);
            els = query.list();
        } catch (Exception e) {
            e.getStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        } finally {
            session.close();
        }
        return els;
    }
}
