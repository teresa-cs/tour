package com.tt.pojos;

import com.tt.pojos.Room;
import com.tt.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-09-30T23:52:47")
@StaticMetamodel(Order1.class)
public class Order1_ { 

    public static volatile SingularAttribute<Order1, User> iduser;
    public static volatile SingularAttribute<Order1, String> quantity;
    public static volatile SingularAttribute<Order1, Date> checkin;
    public static volatile SingularAttribute<Order1, Room> idroom;
    public static volatile SingularAttribute<Order1, Integer> id;
    public static volatile SingularAttribute<Order1, Date> checkout;

}