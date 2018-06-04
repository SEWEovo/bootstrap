package com.zust.controller;;

import com.zust.dto.PictureDto;
import com.zust.dto.UserDto;
import com.zust.entity.Concern;
import com.zust.service.ConcernService;
import com.zust.service.PictureService;
import com.zust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.zust.entity.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class Main2Controller {

    @Autowired

    private HttpServletRequest request;

    @Autowired
    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Autowired
    private PictureService pictureService;

    public void setPictureService(PictureService pictureService) {
        this.pictureService = pictureService;
    }

    @Autowired
    private ConcernService concernService;

    public void setConcernService(ConcernService concernService) {
        this.concernService = concernService;
    }

    @InitBinder
    public void InitBinder(WebDataBinder binder){
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }


    @RequestMapping(value="/login", method= RequestMethod.GET)
    public String loginGet()
    {
        return "login";
    }

    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String login(HttpServletRequest request, HttpSession session, @RequestParam(required= false, defaultValue="") String username, String password)
    {

        List<User> userList = userService.findLogin(username, password);
        System.out.println("登录一下");
        if (userList.size() != 0) {
            session.setAttribute("person", userList.get(0));
            int userId=userList.get(0).getId();
            System.out.println(userId);
            System.out.println("有我诶");
            List<PictureDto> pictureList = pictureService.getFollowPictures(userId);
            List<PictureDto> pictureList2 = pictureService.getNewPicture();
            request.setAttribute("pictureList",pictureList);
            request.setAttribute("pictureList2",pictureList2);
        } else {
            System.out.println("没我诶");
            String message="用户名或密码错误!";
            request.setAttribute("message",message);
            return "login";
        }
        return "userhome";
    }
    @RequestMapping(value="/gohome", method=RequestMethod.GET)
    public String Gohome(HttpServletRequest request, HttpSession session)
    {
        User user=(User)session.getAttribute("person");
        int id=user.getId();
        List<User> userList = pictureService.getMyPicture(id);
        List<Concern> faneds=concernService.getConcernedNum(id);//关注的人数
        int fanedsNum=faneds.size();
        List<Concern> fans=concernService.getConcernerNum(id);//粉丝的人数
        int fansNum=fans.size();
        request.setAttribute("userList",userList);
        request.setAttribute("fans",fansNum);
        request.setAttribute("faneds",fanedsNum);

        return "myhome";
    }
    @RequestMapping(value="/search", method=RequestMethod.POST)
    public String SearchPeople(HttpServletRequest request, HttpSession session,@RequestParam(required= false, defaultValue="")String message,String search) {
        User user = (User) session.getAttribute("person");
        int myid = user.getId();
        System.out.println(search);
        String match="user";
        if (search.equals(match)) {
            request.setAttribute("message",message);
            List<UserDto> userList = userService.findByUserName(myid, message);
            request.setAttribute("userList", userList);
            for(UserDto userDto:userList){
                List<PictureDto> pictureDtoList=this.pictureService.getPicNum(userDto.getId());
                int picNum=pictureDtoList.size();
                userDto.setPictureNum(picNum);
                List<Concern> concernList=concernService.isConcern(myid,userDto.getId());
                if (concernList.size()==0) {
                    System.out.println("没有关注诶");
                    userDto.setState(0);
                } else if (concernList.size()==1) {
                    System.out.println("关注诶");
                    userDto.setState(1);
                }
                List<Concern> faneds=concernService.getConcernedNum(userDto.getId());//关注的人数
                int fanedsNum=faneds.size();
                userDto.setConcernedNum(fanedsNum);
                List<Concern> fans=concernService.getConcernerNum(userDto.getId());//粉丝的人数
                int fansNum=fans.size();
                userDto.setConcernerNum(fansNum);
              int i=1;
                for(PictureDto pictureDto:pictureDtoList){
                    if (i==1) {
                        userDto.setPicId1(pictureDto.getFname());
                    } else if (i==2) {
                        userDto.setPicId2(pictureDto.getFname());
                    } else if (i==3) {
                        userDto.setPicId3(pictureDto.getFname());
                    } else if (i==4) {
                        userDto.setPicId4(pictureDto.getFname());
                    }
                    i++;
                }
            }

            System.out.println("用户");
            return "searchPeople";
        }else {
            List<PictureDto> pictureDtoList2 = pictureService.findPicturesByName(message);
            request.setAttribute("pictureDtoList2", pictureDtoList2);
            request.setAttribute("message",message);
            System.out.println("照片");
            return "searchPicture";
        }
    }

    @RequestMapping(value="/other", method=RequestMethod.GET)
    public String Otherhome(HttpServletRequest request, HttpSession session,@RequestParam(required= false, defaultValue="")int id) {
        System.out.println(id);
        User user=(User)session.getAttribute("person");
        int myid=user.getId();
            List<User> userDtoList = userService.findOther(id);
            List<User> userList = pictureService.getMyPicture(id);
            List<Concern> faneds = concernService.getConcernedNum(id);//关注的人数
            int fanedsNum = faneds.size();
            List<Concern> fans = concernService.getConcernerNum(id);//粉丝的人数
            int fansNum = fans.size();
            int YNfans = 0;
            List<Concern> concernList = concernService.isConcern(myid, id);
            if (concernList.size() == 0) {
                YNfans = 0;
            } else if (concernList.size() == 1) {
                YNfans = 1;
            }
            request.setAttribute("YNfans", YNfans);
            request.setAttribute("userDtoList", userDtoList.get(0));
            request.setAttribute("userList", userList);
            request.setAttribute("fans", fansNum);
            request.setAttribute("faneds", fanedsNum);

            return "otherhome";
    }
    @RequestMapping(value="/regist", method=RequestMethod.GET)
    public String registGet()
    {
        return "regist";
    }

    @RequestMapping(value="/regist", method=RequestMethod.POST)
    public String create(HttpServletRequest request, User user,String username)
    {
        List<User> exitedUser=userService.findUsername(username);
        if (exitedUser.size() == 0) {
            this.userService.save(user);
            return "login";
        }
        else{
            String registMessage="用户名已存在!注册失败";
            request.setAttribute("registMessage",registMessage);
            return "regist";
        }
    }
    @RequestMapping(value="/searchPicTag", method=RequestMethod.POST)
    public String SearchPicTag(HttpServletRequest request, HttpSession session,@RequestParam(required= false, defaultValue="")String tag) {
        User user = (User) session.getAttribute("person");
        int id = user.getId();
        List<Concern> faneds=concernService.getConcernedNum(id);//关注的人数
        int fanedsNum=faneds.size();
        List<Concern> fans=concernService.getConcernerNum(id);//粉丝的人数
        int fansNum=fans.size();
        request.setAttribute("fans",fansNum);
        request.setAttribute("faneds",fanedsNum);
        List<PictureDto> userList = pictureService.findPicturesByTags(tag,id);
        request.setAttribute("userList",userList);
        return "myhome";
    }
    @RequestMapping(value="/updateIntro", method=RequestMethod.POST)
    public String UpdateIntro(HttpServletRequest request, HttpSession session,@RequestParam(required= false, defaultValue="")String intro) {
        User user = (User) session.getAttribute("person");
        user.setIntro(intro);
        this.userService.updateIntro(user);
        session.removeAttribute("person");
        session.setAttribute("person", user);
        int id = user.getId();
        List<User> userList = pictureService.getMyPicture(id);
        List<Concern> faneds=concernService.getConcernedNum(id);//关注的人数
        int fanedsNum=faneds.size();
        List<Concern> fans=concernService.getConcernerNum(id);//粉丝的人数
        int fansNum=fans.size();
        request.setAttribute("fans",fansNum);
        request.setAttribute("faneds",fanedsNum);
        request.setAttribute("userList",userList);

        return "myhome";
    }
    @RequestMapping(value="/updateUser", method=RequestMethod.GET)
    public String updateUserGet()
    {
        return "changeMessage";
    }

    @RequestMapping(value="/updateUser", method=RequestMethod.POST)
    public String updateUser(HttpSession session,String username,String name,String province,String city,String email,String gender,long QQ,String intro,long mobile)
    {
        User user=(User)session.getAttribute("person");
        user.setName(name);
        user.setProvince(province);
        user.setCity(city);
        user.setEmail(email);
        user.setQQ(QQ);
        user.setIntro(intro);
        user.setMobile(mobile);
        this.userService.updateUser(user);
        System.out.println(user);
        return "redirect:/gohome.html";
    }
    @RequestMapping(value="/updatePwd", method=RequestMethod.GET)
    public String updatePwdGet()
    {
        return "changePassword";
    }

    @RequestMapping(value="/updatePwd", method=RequestMethod.POST)
    public String updatePwd(HttpSession session,String oldPassword,String password)
    {
        System.out.println("修改密码啦！");
        User user = (User) session.getAttribute("person");
        int id = user.getId();
        List<User> userList=this.userService.isOldPassword(id,oldPassword);
        if (userList.size()==0) {
            System.out.println("旧密码错误");
            String message="旧密码错误";
            request.setAttribute("message",message);
            return "changePassword";
        }
        else {
            System.out.println("修改成功!");
            user.setPassword(password);
            this.userService.updatePsd(user);
            session.invalidate();
            return "login";
        }
    }
    @RequestMapping(value="/concern", method=RequestMethod.GET)
    public String concern(String type,int concerned_id,HttpSession session){
        if (type.equals("关注ta")) {
            User user=(User)session.getAttribute("person");
            Concern concern=new Concern();
            concern.setConcerner_id(user.getId());
            concern.setConcerned_id(concerned_id);
            Date date=new Date();
            concern.setConcern_time(date);
            this.concernService.save(concern);
            System.out.println("我关注你啦");

        } else if (type.equals("取消关注")) {
            User user=(User)session.getAttribute("person");
            int concerner_id=user.getId();
            this.concernService.cancelConcern(concerned_id, concerner_id);
            System.out.println("我不要关注你啦");
            return "redirect:/other.html?id="+concerned_id;
        }
        return "redirect:/other.html?id="+concerned_id;
    }
    @RequestMapping(value="/deletePicById", method=RequestMethod.GET)
    public String deletePicById(int id,HttpSession session){
        pictureService.deletePictureById(id);
        return "redirect:/gohome.html";
    }
    @RequestMapping(value="/addPic", method=RequestMethod.GET)
    public String addPicGet(){
        return "addPic";
    }
}
