package org.fkit.service;

import org.fkit.mapper.UserMapper;
import org.fkit.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public User getUser(String username, String pass) {
        User user = new User();
        user.setName(username);
        user.setPass(pass);
        return userMapper.selectOne(user);
    }

    public void addUser(User user) {
        userMapper.insert(user);
    }
}
