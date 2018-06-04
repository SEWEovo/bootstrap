package com.zust.dao.impl;

import com.zust.dao.UserDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.zust.entity.User;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {
    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }
    public List<User> findLogin(String username, String password) {
        String hql = "from User u where u.username ='" + username + "' and u.password='" + password + "'";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }
    public List<User>findUsername(String username){
        String hql="from User u where u.username="+username;
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return  query.list();
    }
    public List findByUserName(int id,String name){
        String hql="select new com.zust.dto.UserDto(u.id, u.name, u.username, u.province, u.city, u.gender,u.intro) from User u where u.name like '%"+name+"%' and u.id!="+id;
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }
    public List findOther(int id){
        String hql="from User u where u.id="+id;
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }
    public int save(User user) {
        return (Integer)sessionFactory.getCurrentSession().save(user);
    }
    public void updateIntro(User user){
        Session session = this.getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.saveOrUpdate(user);
        tx.commit();
//       sessionFactory.getCurrentSession().update(user);
    }
    public void updateUser(User user){
        Session session = this.getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.saveOrUpdate(user);
        tx.commit();
//        sessionFactory.getCurrentSession().update(user);
    }
    public List isOldPassword(int id,String oldpassword){
        String hql="from User u where u.id='"+id+"' and u.password='"+oldpassword+"'";
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }
    public void updatePsd(User user){
        Session session = this.getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.saveOrUpdate(user);
        tx.commit();
//        sessionFactory.getCurrentSession().update(user);
    }
}
