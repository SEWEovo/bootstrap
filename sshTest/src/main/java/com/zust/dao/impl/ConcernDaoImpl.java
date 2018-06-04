package com.zust.dao.impl;

import com.zust.dao.ConcernDao;
import com.zust.entity.Concern;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ConcernDaoImpl implements ConcernDao {
    @Autowired
    private SessionFactory sessionFactory;
    private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }
    public List getConcernerNum(int concerned_id){
        String hql="from Concern c where concerned_id="+concerned_id;
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }
    public List getConcernedNum(int concerner_id){
        String hql="from Concern c where concerner_id="+concerner_id;
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }
    public List isConcern(int concerner_id,int concerned_id){
        String hql="from Concern c where concerner_id="+concerner_id+" and concerned_id="+concerned_id;
        Query q=sessionFactory.getCurrentSession().createQuery(hql);
        return q.list();
    }
    public void cancelConcern(int concerned_id,int concerner_id){
        String hql="delete Concern as c where c.concerned_id="+concerned_id+" and concerner_id="+concerner_id;
//        Session session = this.getCurrentSession();
//        Transaction tx = session.beginTransaction();
//        session.delete(user);
//        tx.commit();
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }
    public int save(Concern concern){
//        Session session = this.getCurrentSession();
//        Transaction tx = session.beginTransaction();
//        session.saveOrUpdate(user);
//        tx.commit();
        return (Integer)sessionFactory.getCurrentSession().save(concern);
    }
}
