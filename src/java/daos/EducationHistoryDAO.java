/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import idaos.IEducationHistoryDAO;
import java.util.ArrayList;
import java.util.List;
import models.Education;
import models.EducationHistory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author hp
 */
public class EducationHistoryDAO implements IEducationHistoryDAO {
    private SessionFactory factory;
    private Transaction transaction;
    private Session session;
    private Query query;
    
    public EducationHistoryDAO(SessionFactory factory) {
        this.factory = factory;
    }
    
    @Override
    public List<EducationHistory> getEducationHistory(String id){
        List<EducationHistory> edus = new ArrayList<>();
        try {
            session = factory.openSession();
            transaction = session.beginTransaction();
            
            query = session.createQuery("FROM EducationHistory WHERE employee.id=:id");
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
