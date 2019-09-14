/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.util.ArrayList;
import java.util.List;
import models.EducationHistory;
import models.University;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author hp
 */
public class UniversityDAO {
    private SessionFactory factory;
    private Transaction transaction;
    private Session session;
    private Query query;

    public UniversityDAO(SessionFactory factory) {
        this.factory = factory;
    }
    
    public List<University> getUniversity(String id){
        List<University> edus = new ArrayList<>();
        try {
            session = factory.openSession();
            transaction = session.beginTransaction();
            
            query = session.createQuery("FROM University WHERE employee.id=:id");
            query.setParameter("id", id);
            edus = query.list();
            
        } catch (Exception e) {
            e.getStackTrace();
            if (transaction!=null) {
                transaction.rollback();
            }
        }finally{
            session.close();
        }
        return edus;
    }
    
}
