package com.parking.techlane.entities;

import jakarta.persistence.*;

import java.util.Collection;

@Entity
public class User {

    private Long id;
    private String username;
    private String email;
    private String password;
    private Collection<Car> cars;
    private double balance;

    public void setId(Long id) {
        this.id = id;
    }

    @Id
    @GeneratedValue
    public Long getId() {
        return id;
    }



    @Basic
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    @OneToMany(mappedBy="owner")
    public Collection<Car> getCars() {
        return cars;
    }
    public void setCars(Collection<Car> cars) {
        this.cars = cars;
    }



}
