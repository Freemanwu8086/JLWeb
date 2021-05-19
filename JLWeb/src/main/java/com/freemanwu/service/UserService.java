package com.freemanwu.service;

import com.freemanwu.entity.User;

public interface UserService {
    void save(User user);

    User findByNameAndPassword(User user);
}
