package com.zust.service.impl;

import com.zust.dao.UserDao;
import com.zust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zust.entity.User;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired(required = true)
    private UserDao UserDao;
    public List<User> findLogin(String username, String password){
        return  UserDao.findLogin(username,password);
    }
    public List findByUserName(int id,String name){
        return  UserDao.findByUserName(id,name);
    }
    public List findOther(int id){
        return  UserDao.findOther(id);
    }
    public int save(User entity){
        return  UserDao.save(entity);
    }
    public void updateIntro(User user){
        this.UserDao.updateIntro(user);
    }
    public void updateUser(User user){
        this.UserDao.updateUser(user);
    }
    public List isOldPassword(int id,String oldpassword){
       return UserDao.isOldPassword(id,oldpassword);
    }
    public void updatePsd(User user){
        this.UserDao.updatePsd(user);
    }
    public List<User>findUsername(String username){
        return  UserDao.findUsername(username);
    }
}
