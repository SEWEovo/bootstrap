package com.zust.service;

import com.zust.entity.Concern;

import java.util.List;

public interface ConcernService {
    List getConcernerNum(int concerned_id);
    List getConcernedNum(int concerner_id);
    List isConcern(int concerner_id,int concerned_id);
    void cancelConcern(int concerned_id,int concerner_id);
    int save(Concern concern);
}
