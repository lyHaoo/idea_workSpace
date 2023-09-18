package com.pds.dao;

import com.pds.entity.User;

public interface UserMapper {

    User userLogin(User user);

    boolean userReg(User user);

}
