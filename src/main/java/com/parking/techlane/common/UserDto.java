package com.parking.techlane.common;

public class UserDto {
    String email;
    String password;
    String username;
    Long id;

    double balance;

    public UserDto(String email, String password, String username, double balance, Long id) {
        this.email = email;
        this.password = password;
        this.username = username;
        this.balance=balance;
        this.id = id;
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

    public double getBalance(){
        return balance;
    }

    public Long getId() {
        return id;
    }
}
