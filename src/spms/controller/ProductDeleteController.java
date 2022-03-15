package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.ProductDAO;

@Component("/production/delete.do")
public class ProductDeleteController implements Controller, DataBinding {
	ProductDAO productDAO;
	
	public ProductDeleteController setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
			"no", Integer.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Integer no = (Integer)model.get("no");
		productDAO.delete(no);
		
		return "redirect:list.do";		
	}
}
