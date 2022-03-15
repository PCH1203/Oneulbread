package spms.vo;

import java.sql.Date;

public class Product {
	protected int no;
	protected String product_name;
	protected String price;	
	protected String Summary;
	protected int quantity;
	protected String Path;
	protected String detail_path;
	protected String Category;

	
	public int getNo() {
		return no;
	}
	public Product setNo(int no) {
		this.no = no;
		return this;
	}
	public String getProduct_name() {
		return product_name;
	}
	public Product setProduct_name(String product_name) {
		this.product_name = product_name;
		return this;
	}
	public String getPrice() {
		return price;
	}
	public Product setPrice(String price) {
		this.price = price;
		return this;
	}	
	public String getSummary() {
		return Summary;
	}
	public Product setSummary(String summary) {
		this.Summary = summary;
		return this;
	}
	public int getQuantity() {
		return quantity;
	}
	public Product setQuantity(int quantity) {
		this.quantity = quantity;
		return this;
	}
	public String getPath() {
		return Path;
	}
	public Product setPath(String path) {
		this.Path = path;
		return this;
	}
	public String getDetail_path() {
		return detail_path;
	}
	public Product setDetail_path(String detail_path) {
		this.detail_path = detail_path;
		return this;
	}
	public String getCategory() {
		return Category;
	}
	public Product setCategory(String category) {
		this.Category = category;
		return this;
	}
	
	
	
	
	
	
}
