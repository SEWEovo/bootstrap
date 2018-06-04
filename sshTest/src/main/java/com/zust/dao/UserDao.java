package com.zust.dao;

import com.zust.entity.User;

import java.util.List;

public interface UserDao {

    List<User> findLogin(String username,String password);
    List findByUserName(int id,String name);
    List findOther(int id);
    int save(User entity);
    void updateIntro(User user);
    void updateUser(User user);
    List isOldPassword(int id,String oldpassword);
    void updatePsd(User user);
    List<User>findUsername(String username);
}
