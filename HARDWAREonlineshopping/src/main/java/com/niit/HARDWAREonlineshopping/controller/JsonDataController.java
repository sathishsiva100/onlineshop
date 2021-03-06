package com.niit.HARDWAREonlineshopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.HARDWAREbackend.config.ProductDAO;
import com.niit.HARDWAREbackend.dto.Product;

@Controller
@RequestMapping("/json/data")
public class JsonDataController {

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping("/all/products")
	public List<Product> getAllProducts1() {

		return productDAO.listActiveProducts();

	}

	@RequestMapping("/category/{id}/products")
	public List<Product> getProductsByCategory1(@PathVariable int id) {

		return productDAO.listActiveProductsByCategory(id);

	}
}