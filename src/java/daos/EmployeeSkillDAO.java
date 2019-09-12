/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.util.ArrayList;
import java.util.List;
import models.EmployeeLanguage;
import models.EmployeeSkill;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author hp
 */
public class EmployeeSkillDAO implements IEmployeeSkillDAO {
    private SessionFactory factory;
    private Transaction transaction;
    private Session session;
    private Query query;

    public EmployeeSkillDAO(SessionFactory factory) {
        this.factory = factory;
    }
    
    @Override
    public List<EmployeeSkill> getEmployeeSkill(String id){
        List<EmployeeSkill> employeeSkills  = new ArrayList<>();
        try {
            session = factory.openSession();
            transaction = session.beginTransaction();
            
            query = session.createQuery("FROM EmployeeSkill WHERE employee.id=:id");
            query.setParameter("id", id);
            employeeSkills = query.list();
            
        } catch (Exception e) {
            e.getStackTrace();
            if (transaction!=null) {
                transaction.rollback();
            }
        }finally{
            session.close();
        }
        return employeeSkills;
    }
    
}
