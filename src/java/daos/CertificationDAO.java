/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import idaos.ICertificationDAO;
import java.util.ArrayList;
import java.util.List;
import models.Certification;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author hp
 */
public class CertificationDAO implements ICertificationDAO {
    private SessionFactory factory;
    private Transaction transaction;
    private Session session;
    private Query query;
    
    public CertificationDAO(SessionFactory factory) {
        this.factory = factory;
    }
    
    @Override
    public List<Certification> getCertification(String id){
        List<Certification> certifications = new ArrayList<>();
        try {
            session = factory.openSession();
            transaction = session.beginTransaction();
            
            query = session.createQuery("FROM Certification WHERE employee.id=:id");
            query.setParameter("id", id);
            certifications = query.list();
            
        } catch (Exception e) {
            e.getStackTrace();
            if (transaction!=null) {
                transaction.rollback();
            }
        }finally{
            session.close();
        }
        return certifications;
    }
}
