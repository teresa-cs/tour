/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.Hotel;
import com.tt.pojos.Orders;
import com.tt.pojos.Orders_;
import com.tt.pojos.Room;
import com.tt.pojos.Room_;
import com.tt.repository.HotelRepository;
import java.util.List;
import javax.persistence.criteria.CollectionJoin;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author trang
 */
@Repository
@Transactional
public class HotelRepositoryImpl implements HotelRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    

    @Override
    public List<Hotel> getHotels(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Hotel> query = builder.createQuery(Hotel.class);
        Root root = query.from(Hotel.class);
        query = query.select(root);

        if (kw != null) {
            Predicate p = builder.like(root.get("name").as(String.class), String.format("%%%s%%", kw));
            query = query.where(p);
        }
        int max = 4;
        Query q = session.createQuery(query);
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        return q.getResultList();
    }

    @Override
    public Hotel getHotelbyId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Hotel.class, id);
    }

    @Override
    public long countHotel() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("Select Count(*) From Hotel");
        return Long.parseLong(q.getSingleResult().toString());
    }


    @Override
    public List<Room> getRooms(int id) {
         Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT t FROM Room t WHERE t.idhotel = :id");
        q.setParameter("id", getHotelbyId(id));
        return q.getResultList();
    }

    @Override
    public Room getRoombyId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Room.class, id);
    }

    @Override
    public boolean addOrUpdate(Hotel hotel) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(hotel);
            return true;
        } catch (Exception ex) {
            System.err.println("=== ADD Hotel EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Hotel> searchRate(int rate) {
         Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT h FROM Hotel h WHERE h.rate = :rate");
        q.setParameter("rate", String.valueOf(rate));
        return q.getResultList();
    }

    @Override
    public List<Hotel> bestHotel() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery q = b.createQuery(Room.class);
        Root r = q.from(Room.class);
        CollectionJoin<Room,Orders > orders =r.join(Room_.bookingCollection,JoinType.INNER);

        q = q.select(r)
                .groupBy(orders.get(Orders_.idroom))
                .orderBy(b.desc(b.count(orders.get(Orders_.idroom))));

        Query query = s.createQuery(q);

        query.setMaxResults(6);

        return query.getResultList();
    }

    
    
   
    
}
