package com.mycom.myapp.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl {
    @Autowired
    UserDAO userDAO;

    public UserVO getUser(UserVO vo){
        UserVO v = userDAO.getUser(vo);
        System.out.println(v != null);
        return v;
    }


}
