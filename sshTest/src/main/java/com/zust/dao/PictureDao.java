package com.zust.dao;

import com.zust.entity.Picture;
import com.zust.entity.User;

import java.util.List;

public interface PictureDao {
    List getFollowPictures(int userId);
    List getNewPicture();
    List getMyPicture(int id);
    List findPicturesByTags(String tags, int id);
    List findPicturesByName(String name);
    List getPicNum(int id);
    Picture getById(int id);
    void deletePictureById(int id);
}
