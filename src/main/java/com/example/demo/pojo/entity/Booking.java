package com.example.demo.pojo.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.sql.Date;
import java.util.List;

@Entity
@Table(name = "booking")
public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "costumerid")
    @JsonManagedReference
    private Costumer costumerid;

    @ManyToOne
    @JoinColumn(name = "vehicleid")
    @JsonManagedReference
    private Vehicles vehicleid;

    @ManyToOne
    @JoinColumn(name = "plocation")
    @JsonManagedReference
    private Location plocation;

    @ManyToOne
    @JoinColumn(name = "dlocation")
    @JsonManagedReference
    private Location dlocation;

    @Column(name = "pdate")
    private Date pdate;

    @Column(name = "ddate")
    private Date ddate;

    @Column(name = "payment")
    private Boolean payment;

    public Booking() {
    }

    public Booking(Integer id, Costumer costumerid, Vehicles vehicleid, Location plocation, Location dlocation, Date pdate, Date ddate, Boolean payment) {
        this.id = id;
        this.costumerid = costumerid;
        this.vehicleid = vehicleid;
        this.plocation = plocation;
        this.dlocation = dlocation;
        this.pdate = pdate;
        this.ddate = ddate;
        this.payment = payment;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Costumer getCostumerid() {
        return costumerid;
    }

    public void setCostumerid(Costumer costumerid) {
        this.costumerid=costumerid;
    }

    public Vehicles getVehicleid() {
        return vehicleid;
    }

    public void setVehicleid(Vehicles vehicleid) {
        this.vehicleid = vehicleid;
    }

    public Location getPlocation() {
        return plocation;
    }

    public void setPlocation(Location plocation) {
        this.plocation = plocation;
    }

    public Location getDlocation() {
        return dlocation;
    }

    public void setDlocation(Location dlocation) {
        this.dlocation = dlocation;
    }

    public Date getPdate() {
        return pdate;
    }

    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }

    public Date getDdate() {
        return ddate;
    }

    public void setDdate(Date ddate) {
        this.ddate = ddate;
    }

    public Boolean getPayment() {
        return payment;
    }

    public void setPayment(Boolean payment) {
        this.payment = payment;
    }
}
