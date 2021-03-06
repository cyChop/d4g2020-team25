package com.cgi.d4g.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import java.util.Objects;

@Entity
@Table (name="DEPARTMENT")
public class Department {
    private long dptId;
    private String dptName;
    private String dptCode;
    private long rgnId;

    @Id
    @Column(name = "DPT_ID", nullable = false)
    public long getDptId() {
        return dptId;
    }

    public void setDptId(long dptId) {
        this.dptId = dptId;
    }

    @Basic
    @Column(name = "DPT_NAME", nullable = true, length = 60)
    public String getDptName() {
        return dptName;
    }

    public void setDptName(String dptName) {
        this.dptName = dptName;
    }

    @Basic
    @Column(name = "DPT_CODE", nullable = true, length = 5)
    public String getDptCode() {
        return dptCode;
    }

    public void setDptCode(String dptCode) {
        this.dptCode = dptCode;
    }

    @Basic
    @Column(name = "RGN_ID", nullable = false)
    public long getRgnId() {
        return rgnId;
    }

    public void setRgnId(long rgnId) {
        this.rgnId = rgnId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Department that = (Department) o;
        return dptId == that.dptId &&
            rgnId == that.rgnId &&
            Objects.equals(dptName, that.dptName) &&
            Objects.equals(dptCode, that.dptCode);
    }

    @Override
    public int hashCode() {
        return Objects.hash(dptId, dptName, dptCode, rgnId);
    }
}
