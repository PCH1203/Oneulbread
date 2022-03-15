package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import spms.annotation.Component;
import spms.vo.Event;

@Component("eventDAO")
public class MySqlEventDAO implements EventDAO{
	DataSource ds;
	
	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}
	
	// selectlist =========================================================
	@Override
	public List<Event> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sqlSelect = "SELECT * FROM EVENTS ORDER BY ENO DESC";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<Event> events = new ArrayList<Event>();
			while(rs.next()) {
				events.add(new Event()
										  .setNo(rs.getInt("ENO"))										  
										  .setDate(rs.getDate("DATE"))										  
										  .setLocation(rs.getNString("LOCATION"))
										  .setClass_name(rs.getNString("CLASS_NAME"))
										  .setTime(rs.getNString("TIME"))
										  .setPersonal(rs.getInt("PERSONAL")));	
			}
			
			return events;
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
	public int insert(Event event) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String sqlInsert = "INSERT INTO EVENTS(DATE, LOCATION, CLASS_NAME, TIME, PERSONAL)" +
									   "VALUES(?, ?, ?, ?, ?)";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setDate(1, event.getDate());
			stmt.setString(2, event.getLocation());
			stmt.setString(3, event.getClass_name());
			stmt.setString(4, event.getTime());
			stmt.setInt(5, event.getPersonal());
		
			
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
	public Event selectOne(int no) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelectOne = "SELECT * FROM EVENTS WHERE ENO=" + no;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne);
			if(rs.next()) {
				return new Event()
									.setNo(rs.getInt("ENO"))
									.setDate(rs.getDate("DATE"))
									.setLocation(rs.getNString("LOCATION"))
									.setClass_name(rs.getNString("CLASS_NAME"))
									.setTime(rs.getNString("TIME"))
									.setPersonal(rs.getInt("PERSONAL"));	
			} else {
				throw new Exception("해당 번호의 이벤트를 찾을 수 없습니다.");
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
		
		String sqlDelete = "DELETE FROM EVENTS WHERE ENO=" + no;
		
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
	public int update(Event event) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	   @Override
	   public List<Event> selectlist2() throws Exception {
	      Connection connection = null;
	      Statement stmt = null;
	      ResultSet rs = null;
	      String aa = "스콘 클래스";
	      
	      String sqlSelect = "SELECT * FROM EVENTS WHERE CLASS_NAME =" + "'"+aa+"'"; 
//	       '"+스콘_클래스+ "'"
	      
	      try {
	         connection = ds.getConnection();
	         stmt = connection.createStatement();
	         rs = stmt.executeQuery(sqlSelect);
	         
	         ArrayList<Event> events = new ArrayList<Event>();
	         while(rs.next()) {
	            events.add(new Event()
	                                .setNo(rs.getInt("ENO"))
	                                .setLocation(rs.getNString("LOCATION"))
	                                .setClass_name(rs.getNString("CLASS_NAME"))
	                                .setTime(rs.getNString("TIME"))
	                                .setPersonal(rs.getInt("PERSONAL")));   
	      
	         }
	         
	         return events;
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
	      }
	   }
}
