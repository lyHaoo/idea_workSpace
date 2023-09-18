package com.pds.biz;

import com.pds.entity.User;

public interface UserBiz {

    User userLogin(User user);

    boolean userReg(User user);
}
