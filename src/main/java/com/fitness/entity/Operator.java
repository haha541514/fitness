package com.fitness.entity;

public class Operator {
    private Integer opCode;

    private String opName;

    private String opPass;

    private String opQqnum;

    private Integer opRole;

    public Integer getOpCode() {
        return opCode;
    }

    public void setOpCode(Integer opCode) {
        this.opCode = opCode;
    }

    public String getOpName() {
        return opName;
    }

    public void setOpName(String opName) {
        this.opName = opName == null ? null : opName.trim();
    }

    public String getOpPass() {
        return opPass;
    }

    public void setOpPass(String opPass) {
        this.opPass = opPass == null ? null : opPass.trim();
    }

    public String getOpQqnum() {
        return opQqnum;
    }

    public void setOpQqnum(String opQqnum) {
        this.opQqnum = opQqnum == null ? null : opQqnum.trim();
    }

    public Integer getOpRole() {
        return opRole;
    }

    public void setOpRole(Integer opRole) {
        this.opRole = opRole;
    }
}