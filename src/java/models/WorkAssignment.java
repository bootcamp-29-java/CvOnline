/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author hp
 */
@Entity
@Table(name = "tb_tr_work_assignment")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "WorkAssignment.findAll", query = "SELECT w FROM WorkAssignment w")
    , @NamedQuery(name = "WorkAssignment.findById", query = "SELECT w FROM WorkAssignment w WHERE w.id = :id")
    , @NamedQuery(name = "WorkAssignment.findByCompany", query = "SELECT w FROM WorkAssignment w WHERE w.company = :company")
    , @NamedQuery(name = "WorkAssignment.findByStartDate", query = "SELECT w FROM WorkAssignment w WHERE w.startDate = :startDate")
    , @NamedQuery(name = "WorkAssignment.findByEndDate", query = "SELECT w FROM WorkAssignment w WHERE w.endDate = :endDate")})
public class WorkAssignment implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "company")
    private String company;
    @Basic(optional = false)
    @Lob
    @Column(name = "job_description")
    private String jobDescription;
    @Basic(optional = false)
    @Column(name = "start_date")
    @Temporal(TemporalType.DATE)
    private Date startDate;
    @Basic(optional = false)
    @Column(name = "end_date")
    @Temporal(TemporalType.DATE)
    private Date endDate;
    @JoinColumn(name = "employee", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Employee employee;

    public WorkAssignment() {
    }

    public WorkAssignment(Integer id) {
        this.id = id;
    }

    public WorkAssignment(Integer id, String company, String jobDescription, Date startDate, Date endDate) {
        this.id = id;
        this.company = company;
        this.jobDescription = jobDescription;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public WorkAssignment(String company, String jobDescription, Date startDate, Date endDate, Employee employee) {
        this.company = company;
        this.jobDescription = jobDescription;
        this.startDate = startDate;
        this.endDate = endDate;
        this.employee = employee;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof WorkAssignment)) {
            return false;
        }
        WorkAssignment other = (WorkAssignment) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.WorkAssignment[ id=" + id + " ]";
    }
    
}
