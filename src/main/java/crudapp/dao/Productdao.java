package crudapp.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import java.util.List;
import crudapp.model.Product;

@Component
public class Productdao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	// 1. create operation
	@Transactional             //to perform database operations
	public void createProduct(Product product) {
		this.hibernateTemplate.save(product);
	}
	
	// 2. get all products
	public List<Product> getProducts(){
	List<Product> products = this.hibernateTemplate.loadAll(Product.class);
	return products;
	}
	
	@Transactional
	// 3. delete single product
	public void deleteProduct(int id) {
		Product p = this.hibernateTemplate.load(Product.class, id);
		this.hibernateTemplate.delete(p);
	}
	
	// 4. get single product
	public Product getsingleProduct(int id){
		return this.hibernateTemplate.get(Product.class, id);
	}
}
