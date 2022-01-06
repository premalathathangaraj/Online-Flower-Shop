package com.onlineflowershop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.onlineflowershop.dao.ProductDAO;
import com.onlineflowershop.model.Product;
import com.onlineflowershop.util.ConnectionUtil;

public class ProductDAOImpl implements ProductDAO {

	ConnectionUtil conutil = new ConnectionUtil();
	Connection con = conutil.getDbConnection();

	
	//show product method

		public ResultSet showProduct() {
			String showQuery = "select * from inventory";
			Connection con = ConnectionUtil.getDbConnection();
			ResultSet rs=null;
			Statement stmt;
			try {
				 stmt = con.createStatement();
				 rs = stmt.executeQuery(showQuery);
				 System.out.println("hello");
				 return rs;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return rs;
		}

	//add new product
		
		public void insertProduct(Product product) {
			String insertQuery = "insert into inventory(flower_name,flower_description,color,retail_price,category_name) values(?,?,?,?,?)";

			ConnectionUtil conUtil = new ConnectionUtil();
			Connection con = conUtil.getDbConnection();
			PreparedStatement pst = null;

			try {
				pst = con.prepareStatement(insertQuery);
				pst.setString(1, product.getFlowerName());
				pst.setString(2, product.getFlowerDescription());
				pst.setString(3, product.getColor());
				pst.setDouble(4, product.getRetailPrice());
				pst.setString(5,product.getCatName());
				pst.executeUpdate();
				System.out.println("Value inserted Successfully");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.err.println("Value not inserted in the table");
			}

		}
		
		
		
	//update product
		public  void updateProduct(String flowerName,int flowerId) {
			String updateQuery = "update product_details set flower_name =?  where flower_id=?";
            
			try {
			Connection con = ConnectionUtil.getDbConnection();
			PreparedStatement pstmt = con.prepareStatement(updateQuery);
			pstmt.setString(1, flowerName);
			pstmt.setInt(2, flowerId);
			int i = pstmt.executeUpdate();
			System.out.println(i + "row updated");
			pstmt.close();
			con.close();
			}catch(SQLException e) {
				System.out.println("incorrect");
				e.printStackTrace();
			}
			
		}
		
	//rating insert 
		public  void insertRating(int insertRating) {
			
			String updateQuery="update inventory set Ratings=? where flower_name=?";
			
			Connection con=ConnectionUtil.getDbConnection();
			try {
				PreparedStatement pstmt=con.prepareStatement(updateQuery);
//				pstmt.setInt(1, Integer.parseInt(insertRating.split(",")[1]));
//				pstmt.setString(2, Products.getCakeName());
				pstmt.executeUpdate();
				System.out.println("Rating  added thank you!!");
				pstmt.close();
				con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
				
			
		}	

	//delete method
		
		public  void deleteProduct(int flowerId)  {
			String deleteQuery = "delete from inventory where flower_id=?";

			Connection con = ConnectionUtil.getDbConnection();
			try {
			PreparedStatement pstmt = con.prepareStatement(deleteQuery);
			pstmt.setInt(1, flowerId);
			int i = pstmt.executeUpdate();
			System.out.println(i + "row deleted");
			pstmt.close();
			con.close();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
		
	//find product id	
		
		public  int findProductId1(String productName)
		{
			String query="select flower_id from inventory where flower_name='"+productName+"'";
			
			Connection con=ConnectionUtil.getDbConnection();
		    Statement stmt; 
		    int proId=0;
			
			try {
				stmt=con.createStatement();
				
				  ResultSet rs=stmt.executeQuery(query);
				 if(rs.next())
					{
						proId=rs.getInt(1);
					}
				
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			
			
			return proId;
			
		}
		

		public  ResultSet findPrice(int productId)
		{
			String query="select * from inventory where flower_id='"+productId+"'";
			
			Connection con=ConnectionUtil.getDbConnection();
			Statement stmt;
			ResultSet rs=null;
			
			
			
			try {
				stmt=con.createStatement();
				
				 rs=stmt.executeQuery(query);
//				 if(rs.next())
//					{
//						price=rs.getDouble(1);
//					}
//				return rs;
				 return rs;
			
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
			
			return rs;
			
		}
		
		public ResultSet findCategory(String categoryName) {
			
	 
			Product category=null;
			String showQuery = "select * from inventory where category_name='"+categoryName+"'";
			Connection con = ConnectionUtil.getDbConnection();
			ResultSet rs=null;
			try {
				Statement stmt = con.createStatement();
				 rs = stmt.executeQuery(showQuery);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return rs;
		}
		
		//show rating
		
		public ResultSet ShowRating() {
			
			String query="select flower_name,rating from inventory order by rating desc";
			
			Connection con=ConnectionUtil.getDbConnection();
			ResultSet rs=null;
			Statement stmt;
			try {
				stmt=con.createStatement();
				rs=stmt.executeQuery(query);
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			
			return rs;
			
		}
		
		
		//Category List
	public ResultSet ShowCategory() {
			
			String query="select dintinct category_name from inventory";
			
			Connection con=ConnectionUtil.getDbConnection();
			ResultSet rs=null;
			Statement stmt;
			try {
				stmt=con.createStatement();
				rs=stmt.executeQuery(query);
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			
			return rs;
			
		}
	
//	public ResultSet filterPrice(int min,int max) {
		
//		String query="select flower_name"
		
		
		
//	}
		
		
		
		

		
	}