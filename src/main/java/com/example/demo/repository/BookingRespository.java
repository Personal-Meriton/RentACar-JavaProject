package com.example.demo.repository;

import com.example.demo.pojo.entity.Booking;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BookingRespository extends CrudRepository<Booking, Integer> {

    List<Booking> findAll();
    Booking findBookingById(Integer id);

}
