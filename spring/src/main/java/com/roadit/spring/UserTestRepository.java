package com.roadit.spring;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserTestRepository extends JpaRepository<UserTest, Long> {
}