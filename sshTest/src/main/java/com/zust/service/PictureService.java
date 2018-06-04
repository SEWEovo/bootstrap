package com.zust.service;

import com.zust.entity.Picture;

import java.util.List;

public interface PictureService {
    List getFollowPictures(int userId);
    List getNewPicture();
    List getMyPicture(int id);
    List findPicturesByTags(String tags, int id);
    List findPicturesByName(String name);
    List getPicNum(int id);
    Picture getById(int id);
    void deletePictureById(int id);
}
