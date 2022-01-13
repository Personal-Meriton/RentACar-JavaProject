package com.example.demo.service;

import com.example.demo.pojo.entity.Booking;
import com.example.demo.pojo.entity.Costumer;
import com.example.demo.pojo.entity.Location;
import com.example.demo.pojo.entity.Vehicles;
import com.example.demo.pojo.input.BookingInput;
import com.example.demo.pojo.input.CostumerInput;
import com.example.demo.repository.BookingRespository;
import com.example.demo.repository.CostumerRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.awt.print.Book;
import java.sql.Date;
import java.util.List;

public class DefaultBookingService implements BookingServices {

    @Autowired
    private BookingRespository bookingRespository;

    @Override
    public List<Booking> findAll() {
        return bookingRespository.findAll();
    }

    @Override
    public Booking findBookingById(Integer id) {
        if (id == null) {
            return null;
        }
        return bookingRespository.findBookingById(id);
    }

    @Override
    public Booking save(BookingInput bookingInput) {
      Costumer newCostumerid=bookingInput.getCostumerid();
      Vehicles newVehicleid=bookingInput.getVehicleid();
      Location newPlocation=bookingInput.getPlocation();
      Location newDlocation=bookingInput.getDlocation();
        Date newPdate=bookingInput.getPdate();
        Date newDdate=bookingInput.getDdate();
        Boolean newPayment=bookingInput.getPayment();



        Booking booking = new Booking();
        booking.setCostumerid(newCostumerid);
        booking.setVehicleid(newVehicleid);
        booking.setPlocation(newPlocation);
        booking.setDlocation(newDlocation);
        booking.setPdate(newPdate);
        booking.setDdate(newDdate);
        booking.setPayment(newPayment);


        return bookingRespository.save(booking);
    }

    @Override
    public Booking update(Booking booking, BookingInput bookingInput) {

        Costumer newCostumerid=bookingInput.getCostumerid();
        Vehicles newVehicleid=bookingInput.getVehicleid();
        Location newPlocation=bookingInput.getPlocation();
        Location newDlocation=bookingInput.getDlocation();
        Date newPdate=bookingInput.getPdate();
        Date newDdate=bookingInput.getDdate();
        Boolean newPayment=bookingInput.getPayment();

        booking.setCostumerid(newCostumerid);
        booking.setVehicleid(newVehicleid);
        booking.setPlocation(newPlocation);
        booking.setDlocation(newDlocation);
        booking.setPdate(newPdate);
        booking.setDdate(newDdate);
        booking.setPayment(newPayment);

        return bookingRespository.save(booking);
    }

    @Override
    public void delete(Integer id) {
        bookingRespository.deleteById(id);
    }

}
