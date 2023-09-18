package com.pds.biz;

import com.pds.dao.UserMapper;
import com.pds.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userBiz")
public class UserBizImpl implements UserBiz {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User userLogin(User user) {
        return userMapper.userLogin(user);
    }

    @Override
    public boolean userReg(User user) {
        return userMapper.userReg(user);
    }
}
