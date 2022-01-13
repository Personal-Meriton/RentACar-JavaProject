package com.example.demo.repository;

import com.example.demo.pojo.entity.Location;
import com.example.demo.pojo.entity.Vehicles;
import com.example.demo.pojo.entity.Booking;

import com.example.demo.pojo.input.VehiclesInput;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


import java.sql.Date;
import java.util.List;

public interface VehiclesRepository extends CrudRepository<Vehicles, Integer> {

    List<Vehicles> findAll();
    Vehicles findVehicleById(Integer id);

    @Query(
            "SELECT n FROM Vehicles n where n.locationid.id=:location and  n not in (SELECT n FROM Booking b , Vehicles n WHERE b.vehicleid.id = n.id and b.pdate between :pdate and :ddate and b.ddate  between :pdate and :ddate)"
    )
    List<Vehicles> findAvaliableVehicle(@Param("pdate") Date pdate,
                                        @Param("ddate") Date ddate, @Param("location") Integer location);

}
