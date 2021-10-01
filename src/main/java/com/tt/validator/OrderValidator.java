/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.validator;

import com.tt.pojos.Order1;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author trang
 */
@Component 
public class OrderValidator implements Validator{
     @Override
    public boolean supports(Class<?> clazz) {
        return Order1.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors err) {
        Order1 t = (Order1) target;
        
    }
}