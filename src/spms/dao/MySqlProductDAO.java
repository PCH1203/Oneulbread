package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import spms.annotation.Component;
import spms.vo.Product;

@Component("productDAO")
public class MySqlProductDAO implements ProductDAO{
	DataSource ds;
	
	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}
	
	// selectlist =========================================================
	@Override
	public List<Product> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sqlSelect = "SELECT * FROM PRODUCTS ORDER BY PNO DESC";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<Product> products = new ArrayList<Product>();
			while(rs.next()) {
				products.add(new Product()
										  .setNo(rs.getInt("PNO"))										  
										  .setPath(rs.getNString("PATH"))
										  .setDetail_path(rs.getNString("DETAIL_PATH"))
										  .setCategory(rs.getNString("CATEGORY"))
										  .setSummary(rs.getNString("SUMMARY"))
										  .setProduct_name(rs.getNString("PRODUCT_NAME"))
										  .setPrice(rs.getNString("PRICE"))
										  .setQuantity(rs.getInt("Quantity")));							
			}
			
			return products;
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(Exception e) {
				throw e;
			}
			
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}
			try {
				if(connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				throw e;
			}
		}
	}
	
	
	
	// detail  =========================================================
		@Override
		public String selectdetail(String product) throws Exception {
			Connection connection = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;
			String sqlSelect = "SELECT * FROM PRODUCTS WHERE PRODUCT_NAME=?";
			
			try {
				connection = ds.getConnection();
				stmt = connection.prepareStatement(sqlSelect);
				rs = stmt.executeQuery(sqlSelect);
				stmt.setString(1, product);
				String detail_path= "";
				while(rs.next()) {
					detail_path = rs.getNString("DETAIL_PATH");						
				}
				
				return detail_path;
			} catch(Exception e) {
				throw e;
			} finally {
				try {
					if(rs != null) {
						rs.close();
					}
				} catch(Exception e) {
					throw e;
				}
				
				try {
					if(stmt != null) {
						stmt.close();
					}
				} catch(Exception e) {
					throw e;
				}
				try {
					if(connection != null) {
						connection.close();
					}
				} catch (Exception e) {
					throw e;
				}
			}
		}
	
	// insert =============================================================
	@Override
	public int insert(Product product) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String sqlInsert = "INSERT INTO PRODUCTS(CATEGORY, PRODUCT_NAME, PRICE, SUMMARY, QUANTITY, PATH, DETAIL_PATH)" +
									   "VALUES(?, ?, ?, ?, ?, ?, ?)";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setString(1, product.getCategory());
			stmt.setString(2, product.getProduct_name());
			stmt.setString(3, product.getPrice());			
			stmt.setString(4, product.getSummary());
			stmt.setInt(5, product.getQuantity());
			stmt.setNString(6, product.getPath());
			stmt.setNString(7,  product.getDetail_path());
		
			
			return stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}
			try {
				if(connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				throw e;
			}
		}
	}
	
	// selectOne ==========================================================
	@Override
	public Product selectOne(int no) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelectOne = "SELECT * FROM PRODUCTS WHERE PNO=" + no;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne);
			if(rs.next()) {
				return new Product()
									.setNo(rs.getInt("PNO"))										  
									.setPath(rs.getNString("PATH"))
									.setDetail_path(rs.getNString("DETAIL_PATH"))									
									.setCategory(rs.getNString("CATEGORY"))
									.setSummary(rs.getNString("SUMMARY"))
									.setProduct_name(rs.getNString("PRODUCT_NAME"))
									.setPrice(rs.getNString("PRICE"))
									.setQuantity(rs.getInt("Quantity"));	
	
			} else {
				throw new Exception("해당 번호의 프로젝트를 찾을 수 없습니다.");
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(Exception e) {
				throw e;
			}
			
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}
			try {
				if(connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				throw e;
			}
		}
	}
	
	// delete =============================================================
	@Override
	public int delete(int no) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		
		String sqlDelete = "DELETE FROM PRODUCTS WHERE PNO=" + no;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			return stmt.executeUpdate(sqlDelete);
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				throw e;
			}
		}
	}
	
	// update (구현 안함) ====================================================
	@Override
	public int update(Product product) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
}
