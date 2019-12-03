package com.openclassrooms.service.impl;

import com.openclassrooms.models.User;
import com.openclassrooms.repository.UserRepository;
import com.openclassrooms.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public void create(User user) {
        userRepository.save(user);
    }
}
