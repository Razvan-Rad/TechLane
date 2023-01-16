package com.parking.techlane.common;

public class UserDto {
    String email;
    String password;
    String username;
    double balance;
    Long id;



    public UserDto(String email, String password, String username, double balance, Long id) {
        this.email = email;
        this.password = password;
        this.username = username;
        this.balance=balance;
        this.id = id;
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

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public Long getId() {
        return id;
    }
}
