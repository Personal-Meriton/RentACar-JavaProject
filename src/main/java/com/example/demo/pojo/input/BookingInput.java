package com.example.demo.pojo.input;

import com.example.demo.pojo.entity.Booking;
import com.example.demo.pojo.entity.Costumer;
import com.example.demo.pojo.entity.Location;
import com.example.demo.pojo.entity.Vehicles;

import java.sql.Date;

public class BookingInput {

    private Costumer costumerid;
    private Vehicles vehicleid;
    private Location plocation;
    private Location dlocation;
    private Date pdate;
    private Date ddate;
    private Boolean payment;


    public BookingInput(Costumer costumerid, Vehicles vehicleid, Location plocation, Location dlocation, Date pdate, Date ddate, Boolean payment) {
        this.costumerid = costumerid;
        this.vehicleid = vehicleid;
        this.plocation = plocation;
        this.dlocation = dlocation;
        this.pdate = pdate;
        this.ddate = ddate;
        this.payment = payment;


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
