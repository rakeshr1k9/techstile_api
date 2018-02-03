package com.ogmatech.techstile.techstile_api.controller;

import com.ogmatech.techstile.techstile_api.repository.UserRepository;
import com.ogmatech.techstile.techstile_api.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api")
public class UserController {

    @Autowired
    UserRepository userRepository;

    // Get All Users
    @GetMapping("/users")
    public List<User> getAllUsers(){
        return userRepository.findAll();
    }

    // Get a Single User
    @GetMapping("/users/{id}")
    public ResponseEntity<User> getUserById(@PathVariable(value = "id") Long idUser){
        User user = userRepository.findOne(idUser);
        if(user == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok().body(user);
    }

    // Create a new User
    @PostMapping("/users")
    public User createUser(@Valid @RequestBody User user){
        return userRepository.save(user);
    }

    // Update a User
    @PutMapping("/users/{id}")
    public ResponseEntity<User> updateUser(@PathVariable(value = "id") Long idUser, @Valid @RequestBody User userDetails) {
        User user = userRepository.findOne(idUser);
        if (user == null) {
            return ResponseEntity.notFound().build();
        }
        user.setUserMobile(userDetails.getUserMobile());
        user.setUserName(userDetails.getUserName());
        user.setUserPassword(userDetails.getUserPassword());
        user.setUserTypeId(userDetails.getUserTypeId());
        user.setUserIsDeleted(userDetails.getUserIsDeleted());

        User updatedUser = userRepository.save(user);
        return ResponseEntity.ok(updatedUser);
    }

    // Delete a User
    @DeleteMapping("/users/{id}")
    public ResponseEntity<User> deleteUser(@PathVariable(value = "id") Long idUser){
        User user = userRepository.findOne(idUser);
        if(user == null){
            return ResponseEntity.notFound().build();
        }

        userRepository.delete(user);
        return ResponseEntity.ok().build();
    }

}
