/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Hotel;
import com.tt.pojos.Order1;
import com.tt.pojos.Room;
import com.tt.pojos.Tour;
import com.tt.service.HotelService;
import com.tt.validator.WebAppValidator;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author trang
 */
@Controller
@ControllerAdvice
public class HotelController {
    @Autowired
    private HotelService hotelService;
    
    @Autowired
    private WebAppValidator orderValidator;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.setValidator(orderValidator);
    }
    
  
    @GetMapping("/hotel")
    public String tour(Model model, @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("hotel", this.hotelService.getHotels(params.get(params.get("kw")), page));
        model.addAttribute("counter", this.hotelService.countHotel());
        return "hotel";
    }
    
    @GetMapping("/hotel/hotel-{hotelId}")
    public String tour_place(Model model, @PathVariable(value = "hotelId") int hotelId) {
        Hotel h= this.hotelService.getHotelbyId(hotelId);
        model.addAttribute("hotel", h);
        model.addAttribute("room", this.hotelService.getRooms(hotelId));
        return "room";
    }
    @GetMapping("/hotel/order-{roomId}")
    public String order(Model model, @PathVariable(value = "roomId") int roomId) {
        model.addAttribute("order", new Order1());
        model.addAttribute("room", this.hotelService.getRoombyId(roomId));
        return "order";
    }
    

    
    @PostMapping("/hotel/order-{roomId}")
    public String add(Model model,@ModelAttribute(value = "order") @Valid Order1 o,
            BindingResult result) {
        if (!result.hasErrors()) {
           
            if (this.hotelService.addOrder(o) == true) {
                return "redirect:/";
            }else{
                model.addAttribute("errMsg", "Something wrong!");
            }
        }

        return "order";
    }
    
    
}
