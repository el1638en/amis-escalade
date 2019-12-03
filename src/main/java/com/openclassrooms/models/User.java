package com.openclassrooms.models;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Entity
@Table(name = "T_USER")
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "U_ID")
    private Long id;

    @NotNull(message = "Name is required")
    @Column(name = "U_NAME")
    private String name;

    @NotNull(message = "Fisrt name is required")
    @Column(name = "U_FIRST_NAME")
    private String firstName;

    @NotNull(message = "Login is required")
    @Size(min = 6, max = 6, message = "Login must contain 6 characters")
    @Column(name = "U_LOGIN")
    private String login;

    @NotNull(message = "Password is required")
    @Size(min = 6, max = 6, message = "Password must contain 6 characters")
    @Column(name = "U_PASSWORD")
    private String password;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    @Override
    public String toString() {
        return "Utilisateur{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", firstName='" + firstName + '\'' +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
