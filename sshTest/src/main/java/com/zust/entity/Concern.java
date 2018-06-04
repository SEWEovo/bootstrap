package com.zust.entity;

import org.apache.commons.lang.builder.ToStringBuilder;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="concern")
public class Concern {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
    @Column private int concerner_id;
    @Column private int concerned_id;
    @Column private Date concern_time;

    @Override
    public String toString(){
        return ToStringBuilder.reflectionToString(this);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getConcerner_id() {
        return concerner_id;
    }

    public void setConcerner_id(int concerner_id) {
        this.concerner_id = concerner_id;
    }

    public int getConcerned_id() {
        return concerned_id;
    }

    public void setConcerned_id(int concerned_id) {
        this.concerned_id = concerned_id;
    }

    public Date getConcern_time() {
        return concern_time;
    }

    public void setConcern_time(Date concern_time) {
        this.concern_time = concern_time;
    }



}

