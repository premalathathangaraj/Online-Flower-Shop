package com.onlineflowershop.dao.impl;


import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.onlineflowershop.dao.CartDAO;
import com.onlineflowershop.model.Cart;
import com.onlineflowershop.util.ConnectionUtil;

public class CartDAOImpl implements CartDAO {

	public void insertCart(Cart cart) {
		ProductDAOImpl proDao = new ProductDAOImpl();
		UserDAOImpl userDao = new UserDAOImpl();
		
		String insert = "insert into cart_items(flower_id,user_id,order_quantity,total_price) values(?,?,?,?)";

		ConnectionUtil conUtil = new ConnectionUtil();
		Connection con = conUtil.getDbConnection();
		PreparedStatement pst = null;

		try {
			pst = con.prepareStatement(insert);
			pst.setInt(1, cart.getProductId());
			pst.setInt(2, cart.getUserId());
			System.out.println(cart.getProductId());
			System.out.println(cart.getUserId());
			pst.setInt(3, cart.getOrderQuantity());
			pst.setDouble(4, cart.getTotalPrice());
			pst.executeUpdate();
			System.out.println("Value inserted Successfully");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("Value not inserted in the table");
		}
	}

	//view cart items

		public  ResultSet ShowCart(int userId) {	
			
			
			String query ="select  flower_id,count(order_quantity),sum(total_price),user_id,trunc(order_date) from cart_items group by flower_id,user_id ,trunc(order_date)order by trunc(order_date) desc";
			Connection con = ConnectionUtil.getDbConnection();	
				
			
			
			try {
					Statement stmt = con.createStatement();
				System.out.println(userId);
				ResultSet rs = stmt.executeQuery(query);
				
			
				return rs;
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return null;
		}

		// update cart
		public  void updateCart(String updateCart) {
			String updateQuery = "update cart_items set order_quantity =? where cart_id=?";
	      
			try {
			Connection con = ConnectionUtil.getDbConnection();
			PreparedStatement pstmt = con.prepareStatement(updateQuery);
			pstmt.setInt(1, Integer.parseInt(updateCart.split(",")[0]));
			pstmt.setInt(2, Integer.parseInt(updateCart.split(",")[1]));
			int i = pstmt.executeUpdate();
			System.out.println(i + "row updated");
			pstmt.close();
			con.close();
			}catch(SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		// delete cart

		public  void deleteCart(String delete)  {
			String deleteQuery = "delete from cart_items where cart_id=?";

			try {
			Connection con = ConnectionUtil.getDbConnection();
			PreparedStatement pstmt = con.prepareStatement(deleteQuery);
			pstmt.setInt(1, Integer.parseInt(delete));
			int i = pstmt.executeUpdate();
			System.out.println(i + "row deleted");
			pstmt.close();
			con.close();
			}
			catch(SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}
		}

	// find cart id		

		public  int findCartId(int cart) {
			String query = "select cart_id from product_details where user_id=?";

			Connection con = ConnectionUtil.getDbConnection();
			int cartId = 0;
			try {
				PreparedStatement pre = con.prepareStatement(query);
				pre.setInt(1, cartId);
				ResultSet rs = pre.executeQuery(query);
				if (rs.next()) {
					cartId = rs.getInt(1);
				}
				System.out.println(cartId);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return cartId;

		}
		
		//get wallet balance:
			public int walletbal (int id)  
			{
				Connection con = ConnectionUtil.getDbConnection();
				String query = "select user_wallet from user_details where user_id = ?";
				PreparedStatement statement = null;
				try {
					statement = con.prepareStatement(query);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				try {
					statement.setInt(1, id);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				ResultSet rs = null;
				try {
					rs = statement.executeQuery();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				try {
					while(rs.next()) {
							try {
								return rs.getInt(1);
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return -1;
			}

		//update wallet balance:
			public int updatewallet(int amount,int userid) {
				int res=0;
			
				try {
					
				
				Connection con = ConnectionUtil.getDbConnection();
				String query = "update user_details set user_wallet = ? where user_id = ?";
				PreparedStatement statement = con.prepareStatement(query);
				statement.setInt(1,amount);
				statement.setInt(2, userid);
				 res = statement.executeUpdate();
				 statement.executeUpdate("commit");
				 
				}catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				//return res;	

			}
				return res;
		
			
			}
			
			public ResultSet showUserCart(int userId) {
				String query = "select email_id,flower_name,order_quantity,total_price,order_date from cart_items inner join user_details using (user_id)inner join inventory using(flower_id) where user_id=?" ; 
						
				
				Connection con=ConnectionUtil.getDbConnection();
				PreparedStatement stmt;
				
				ResultSet rs=null;
				try {
					stmt=con.prepareStatement(query);
					System.out.println(userId);
					stmt.setInt(1,userId) ;
					
					rs=stmt.executeQuery();	
					return rs;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}		
				
				return rs;
				
			}




}
