package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.ProductDAO;
import spms.vo.Product;


@Component("/production/add.do")
public class ProductAddController implements Controller, DataBinding {
	ProductDAO productDAO;
	
	public ProductAddController setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"product", spms.vo.Product.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Product product = (Product)model.get("product");
		if(product.getProduct_name() == null) {
			
			return "/production/productAdd.jsp";
		} else {
			productDAO.insert(product);
			return "redirect:list.do";
		}
	}
}
