/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import controllers.AwardController;
import controllers.CertificationController;
import controllers.EmployeeController;
import controllers.EmployeeLanguageController;
import controllers.EmployeeSkillCotroller;
import controllers.ExperienceController;
import controllers.LoginRegisterController;
import controllers.OrganizationController;
import controllers.WorkAssignmentController;
import daos.LoginRegisterDAO;
import daos.EmployeeRoleDAO;
import daos.GeneralDAO;
import icontrollers.IEmployeeController;
import icontrollers.ILoginRegisterController;
import idaos.IGeneralDAO;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import models.Account;
import models.Award;
import models.Certification;
import models.Education;
import models.Employee;
import models.EmployeeRole;
import models.Organization;
import models.Role;
import org.hibernate.SessionFactory;

/**
 *
 * @author Reza
 */
public class Testing {
    
//    public static void show() {
//        GeneralDAO<Employee> gdao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), Employee.class);
//        for (Employee employee : gdao.getAll()) {
//            System.out.println(employee.getId() + " - " + employee.getFirstName());
//        }
//    }
    
    public static void main(String[] args) throws ParseException, FileNotFoundException {
        SessionFactory factory = HibernateUtil.getSessionFactory();
//        System.out.println(factory);
//        LoginRegisterDAO dao = new LoginRegisterDAO(factory);
//        Account account = dao.getByEmail("mii.bootcamp29@gmail.com");
//        EmployeeRoleDAO rdao = new EmployeeRoleDAO(factory);
//        List<String> session = new ArrayList<>();
//        System.out.println(account.getId());
//        for (EmployeeRole role : rdao.getByEmployee(account.getId())) {
//            session.add(role.getRole().getName());
//            System.out.println(role.getRole().getName());
//        }
//        System.out.println(session.contains("Super Admin"));
//        if (session.contains("Super Admin")) {
//            System.out.println("Session Berhasil");
//        }else{
//            System.out.println("Session Gagal");
//            
//        }
//        System.out.println(factory);
//        GeneralDAO<Employee> gdao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), Employee.class);
//        Employee e = new Employee();
//        e.setId("2");
//        e.setFirstName("Lord");
//        e.setLastName("Khrisna");
//        e.setEmail("akungame607@gmail.com");
//        e.setBirthPlace("Klaten");
//        String date = "1997-03-11";
//        DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
//        Date d = df.parse(date);
//        e.setBirthDate(d);
//        e.setGender("Male");
//        e.setNationality("WNI");
//        e.setPhoto("web/image/default-image.jpg");
//        e.setIsDelete(false);
//        System.out.println(gdao.saveOrDelete(e, true));

//        IEmployeeController iec = new EmployeeController(factory);
//        System.out.println(iec.save("3", "Mus", "mus", "mus", "mus", "2010-10-10", "Male", "WNI", "kosongi", false));
//        System.out.println(iec.delete("3"));
//        show();
//          IEmployeeController iec = new EmployeeController(factory);
//          System.out.println(iec.save("2", "khrisna", "Khrisna", "accountgame607@gmail.com", "Klaten ", "2019-09-03", "Male", "WNI","image/default-image.png", false));
//        ILoginRegisterController ilrc = new LoginRegisterController(factory);
//        System.out.println(ilrc.updateByToken("9ekeZyz0NRfzQ9LkohXI", "Mustofa98"));
//        System.out.println(factory);
//        IGeneralDAO<Education> igdao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), Education.class);
//        System.out.println(igdao.getAll());
        
        IGeneralDAO<Organization> igdao = new GeneralDAO<>(factory, Organization.class);
//        System.out.println(igdao.getAll());
        AwardController ac = new AwardController(factory);
        CertificationController c = new CertificationController(factory);
//        System.out.println(c.save("asd", 1, "3"));
        OrganizationController o = new OrganizationController(factory);
//        System.out.println(o.save("asd", "ketua", "2016-06-16", "2017-09-19", "5"));
        WorkAssignmentController wac = new WorkAssignmentController(factory);
//        System.out.println(wac.saveOrDelete("asd", "asd", "2019-05-12", "2019-09-12", "3"));
        EmployeeLanguageController elc = new EmployeeLanguageController(factory);
//        System.out.println(elc.save("in", "5"));
        EmployeeSkillCotroller esc =  new EmployeeSkillCotroller(factory);
//        System.out.println(esc.save(80, "3", "5"));
        ExperienceController ec = new ExperienceController(factory);
//        System.out.println(ec.save("LOMBA", "2019", "5"));
        


    }
    
}
