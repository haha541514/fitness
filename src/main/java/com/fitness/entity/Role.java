package com.fitness.entity;

public class Role {
    private Integer roleCode;

    private String roleName;

    private String roleCreatetime;

    public Integer getRoleCode() {
        return roleCode;
    }

    public void setRoleCode(Integer roleCode) {
        this.roleCode = roleCode;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName == null ? null : roleName.trim();
    }

    public String getRoleCreatetime() {
        return roleCreatetime;
    }

    public void setRoleCreatetime(String roleCreatetime) {
        this.roleCreatetime = roleCreatetime == null ? null : roleCreatetime.trim();
    }
}