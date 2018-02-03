package com.ogmatech.techstile.techstile_api.model;

import org.hibernate.validator.constraints.NotBlank;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;


import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "user")
@EntityListeners(AuditingEntityListener.class)
@JsonIgnoreProperties(value = {"userCreatedAt","userUpdatedAt"},allowGetters = true)

public class User implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idUser;

    @ManyToOne
    private Long userTypeId;

    @Column(nullable = false)
    private String userName;

    @Column(nullable = false)
    private BigDecimal userMobile;

    @Column(nullable = false)
    private String userPassword;

    @Column(nullable = false)
    private int userIsDeleted;

    @Column(nullable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    @CreatedDate
    private Date userCreatedAt;

    @Column(nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    @LastModifiedDate
    private Date userUpdatedAt;

    @Temporal(TemporalType.TIMESTAMP)
    private Date userDeletedAt;

    public Long getIdUser() {
        return idUser;
    }

    public void setIdUser(Long idUser) {
        this.idUser = idUser;
    }

    public Long getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(Long userTypeId) {
        this.userTypeId = userTypeId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public BigDecimal getUserMobile() {
        return userMobile;
    }

    public void setUserMobile(BigDecimal userMobile) {
        this.userMobile = userMobile;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public int getUserIsDeleted() {
        return userIsDeleted;
    }

    public void setUserIsDeleted(int userIsDeleted) {
        this.userIsDeleted = userIsDeleted;
    }

    public Date getUserCreatedAt() {
        return userCreatedAt;
    }

    public void setUserCreatedAt(Date userCreatedAt) {
        this.userCreatedAt = userCreatedAt;
    }

    public Date getUserUpdatedAt() {
        return userUpdatedAt;
    }

    public void setUserUpdatedAt(Date userUpdatedAt) {
        this.userUpdatedAt = userUpdatedAt;
    }

    public Date getUserDeletedAt() {
        return userDeletedAt;
    }

    public void setUserDeletedAt(Date userDeletedAt) {
        this.userDeletedAt = userDeletedAt;
    }
}
