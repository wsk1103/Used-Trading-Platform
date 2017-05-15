package com.wsk.pojo;

import java.io.Serializable;
import java.util.Date;

public class WantContext implements Serializable{
    private Integer id;

    private Date modified;

    private Integer uwid;

    private String context;

    private Integer display;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getModified() {
        return modified == null ? null : (Date) modified.clone();
    }

    public void setModified(Date modified) {
        this.modified = modified == null ? null : (Date) modified.clone();
    }

    public Integer getUwid() {
        return uwid;
    }

    public void setUwid(Integer uwid) {
        this.uwid = uwid;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context == null ? null : context.trim();
    }

    public Integer getDisplay() {
        return display;
    }

    public void setDisplay(Integer display) {
        this.display = display;
    }
}