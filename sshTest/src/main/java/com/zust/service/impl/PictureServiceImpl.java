package com.zust.service.impl;

import com.zust.dao.PictureDao;
import com.zust.entity.Picture;
import com.zust.service.PictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PictureServiceImpl implements PictureService{
    @Autowired(required = true)
    private PictureDao pictureDao;
    public List getFollowPictures(int userId){
        return  pictureDao.getFollowPictures(userId);
    }
    public  List getNewPicture(){
        return  pictureDao.getNewPicture();
    }
   public List getMyPicture(int id){
        return  pictureDao.getMyPicture(id);
   }
    public List findPicturesByTags(String tags, int id){
       return pictureDao.findPicturesByTags(tags,id);
    }
    public List findPicturesByName(String name){
        return  pictureDao.findPicturesByName(name);
    }
    public List getPicNum(int id){
        return  pictureDao.getPicNum(id);
    }
    public Picture getById(int id){
        return pictureDao.getById(id);
    }
    public void deletePictureById(int id){
        this.pictureDao.deletePictureById(id);
    }




}
