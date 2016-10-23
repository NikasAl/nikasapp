package net.upmob.dao;


import net.upmob.domain.User;

public interface UserDao {

	User findByUserName(String username);

}