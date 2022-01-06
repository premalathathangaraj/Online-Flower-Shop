package com.onlineflowershop.dao;

import java.sql.ResultSet;

import com.onlineflowershop.model.User;

public interface UserDAO {
	
	public void insertUser(User user);
	public  User validateUser(String emailId,String password);
	public  ResultSet showAllUser();
	public void update(String update);
	public void deletedetails(String delete);
	public int findUserId(String userName);
	public  ResultSet walletbal(int id);
	public int updatewallet(int amount,int userid);

}
