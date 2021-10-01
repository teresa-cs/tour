/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.cloudinary.Cloudinary;
import com.tt.pojos.Hotel;
import com.tt.pojos.Order1;
import com.tt.pojos.Room;
import com.tt.pojos.User;
import com.tt.repository.HotelRepository;
import com.tt.repository.TourRepository;
import com.tt.repository.UserRepository;
import com.tt.service.HotelService;
import java.util.List;
import javax.persistence.criteria.Order;
import javax.ws.rs.core.SecurityContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 *
 * @author trang
 */
@Service
public class HotelServiceImpl implements HotelService{
    @Autowired
    private HotelRepository hotelRepository;
    
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private Cloudinary cloudinary;

    
    @Override
    public List<Hotel> getHotels(String kw, int page) {
       
        return this.hotelRepository.getHotels(kw, page);
    }

    @Override
    public Hotel getHotelbyId(int id) {
        return this.hotelRepository.getHotelbyId(id);
    }

    @Override
    public long countHotel() {
        return this.hotelRepository.countHotel();
    }


    @Override
    public List<Room> getRooms(int id) {
        
        return this.hotelRepository.getRooms(id);
    }

    @Override
    public boolean addOrder(Order1 o) {
        Room r= this.hotelRepository.getRoombyId(1);
        String name= SecurityContextHolder.getContext().getAuthentication().getName();
        User u= userRepository.getUserbyName(name);
        o.setIdroom(r);
        o.setIduser(u);
        return this.hotelRepository.addOrder(o);

    }

    @Override
    public Room getRoombyId(int i) {
        return this.hotelRepository.getRoombyId(i);
    }

}
