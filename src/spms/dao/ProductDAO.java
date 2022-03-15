package spms.dao;

import java.util.List;
import spms.vo.Product;



public interface ProductDAO {
	List<Product> selectlist() throws Exception;
	String selectdetail(String product) throws Exception;
	
	int insert(Product product) throws Exception;
	Product selectOne(int no) throws Exception;
	int update(Product product) throws Exception;
	int delete(int no) throws Exception;
}
