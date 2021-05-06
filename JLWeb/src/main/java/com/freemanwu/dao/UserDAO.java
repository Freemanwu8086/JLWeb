package com.freemanwu.dao;

import com.freemanwu.entity.User;

public interface UserDAO {
    void save(User user);

    User findByNameAndPassword(User user);
}
