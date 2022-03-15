package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.MySqlProductDAO;

@Component("/detaillist.do")
public class ProductDetailController implements Controller, DataBinding {
	/*
	 * DI(Dependency Injection) 1) 클래스간 결합도 낮춤 2) MemberDAO 인터페이스를 선언하고 상속구현하므로써 다른
	 * DBMS로의 전환 용이 3) 나중에 변경할 자동화 작업에 사용
	 */

	MySqlProductDAO productDAO = null;

	public ProductDetailController setProdectDAO(MySqlProductDAO productDAO) {
		this.productDAO = productDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
			"detail_path", String.class	
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception{
		model.put("detail_path", (String)model.get("detail_path"));
		return "/product/new-item1.jsp";
	}
}