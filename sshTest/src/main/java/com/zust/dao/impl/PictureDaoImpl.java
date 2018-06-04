package com.zust.dao.impl;

import com.zust.dao.PictureDao;
import com.zust.entity.Picture;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository
public class PictureDaoImpl implements PictureDao {
    @Autowired
    private SessionFactory sessionFactory;
    private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }

    public List getFollowPictures(int userId) {
        String hql="select new com.zust.dto.ConcernDto(r.id , c.concerner_id , d.id , c.concerned_id , d.name , p.id , p.name , p.upload_time , p.fname,p.tags) from Concern c,User r,User d,Picture p where r.id="+userId+" and r.id=c.concerner_id and d.id=c.concerned_id and d.id=p.user_id";
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }
    public List getNewPicture(){
        String hql="select new com.zust.dto.PictureDto(p.id,p.name,p.fname,p.user_id,p.intro,p.tags,p.upload_time,p.click_num,u.name) from Picture p,User u where u.id=p.user_id order by p.upload_time desc";
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return  query.list();
    }
    public List getMyPicture(int id){
        String hql="select new com.zust.dto.PictureDto(p.id,p.name,p.fname,p.user_id,p.intro,p.tags,p.upload_time,p.click_num,u.name) from Picture p,User u where p.user_id=u.id and u.id="+id;
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return  query.list();
    }
    //名称查询
    public List findPicturesByName(String name){
        String hql="select new com.zust.dto.PictureDto(p.id,p.name,p.fname,p.user_id,p.intro,p.tags,p.upload_time,p.click_num,u.name) from Picture p,User u where p.user_id=u.id and p.name like '%"+name+"%'";
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }
    //标签查询
    public List findPicturesByTags(String tags, int id){
        String hql="select new com.zust.dto.PictureDto(p.id,p.name,p.fname,p.user_id,p.intro,p.tags,p.upload_time,p.click_num,u.name) from Picture p,User u where p.user_id=u.id and p.tags like '%"+tags+"%' and u.id="+id;
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }
    public List getPicNum(int id){
        String hql="select new com.zust.dto.PictureDto(p.id,p.name,p.fname,p.user_id,p.intro,p.tags,p.upload_time,p.click_num,u.name) from Picture p,User u where p.user_id=u.id and u.id="+id;
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }
    public Picture getById(int id){
        return (Picture)sessionFactory.getCurrentSession().get(Picture.class, id);
    }

    public void deletePictureById(int id){
        Picture picture=getById(id);
        Session session = this.getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.delete(picture);
        tx.commit();
    }
}
