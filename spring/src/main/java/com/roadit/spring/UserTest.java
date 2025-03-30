package com.roadit.spring;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.ZonedDateTime;

@Entity
@Table(name = "user_user")
@Getter
@Setter
@NoArgsConstructor
public class UserTest {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 128)
    private String password;

    private ZonedDateTime lastLogin;

    @Column(nullable = false)
    private boolean isSuperuser;

    @Column(nullable = false, length = 254, unique = true)
    private String email;

    @Column(nullable = false, length = 100)
    private String name;

    @Column(nullable = false)
    private boolean isActive;

    @Column(nullable = false)
    private boolean isStaff;

    @Column(nullable = false, length = 2)
    private String nation;

    @Column(nullable = false, length = 100, unique = true)
    private String userId;
}