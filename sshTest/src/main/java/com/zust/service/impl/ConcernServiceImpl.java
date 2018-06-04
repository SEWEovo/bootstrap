package com.zust.service.impl;

import com.zust.dao.ConcernDao;
import com.zust.dto.ConcernDto;
import com.zust.entity.Concern;
import com.zust.service.ConcernService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ConcernServiceImpl implements ConcernService {
    @Autowired(required = true)
    private ConcernDao concernDao;
    public List getConcernerNum(int concerned_id){
        return concernDao.getConcernerNum(concerned_id);
    }
    public List getConcernedNum(int concerner_id){
        return  concernDao.getConcernedNum(concerner_id);
    }
    public List isConcern(int concerner_id,int concerned_id){
        return  concernDao.isConcern(concerner_id,concerned_id);
    }
    public void cancelConcern(int concerned_id,int concerner_id){
        this.concernDao.cancelConcern(concerned_id,concerner_id);
    }
    public int save(Concern concern){
       return concernDao.save(concern);
    }

}
