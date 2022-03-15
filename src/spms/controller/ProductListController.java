package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.dao.MySqlProductDAO;

@Component("/production/list.do")
public class ProductListController implements Controller {
	/*
	 * DI(Dependency Injection) 1) 클래스간 결합도 낮춤 2) MemberDAO 인터페이스를 선언하고 상속구현하므로써 다른
	 * DBMS로의 전환 용이 3) 나중에 변경할 자동화 작업에 사용
	 */

	MySqlProductDAO productDAO = null;

	public ProductListController setProdectDAO(MySqlProductDAO productDAO) {
		this.productDAO = productDAO;
		return this;
	}

	@Override
	public String execute(Map<String, Object> model) throws Exception {
		// 리턴될 조회 결과 맵에 담음
		model.put("productList", productDAO.selectlist());
		String pageNo = (String) model.get("pageNo");

		if (pageNo != null && pageNo.equals("0")) {
			return "/new-item.jsp";
		} else {

			return "/production/productList.jsp";
		}
	}
}