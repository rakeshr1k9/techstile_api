package com.ogmatech.techstile.techstile_api.repository;


import com.ogmatech.techstile.techstile_api.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}
