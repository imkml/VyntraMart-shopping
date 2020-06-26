package net.virtusa.vyntramartbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.virtusa.vyntramartbackend.dao.CategoryDAO;
import net.virtusa.vyntramartbackend.dto.Category;

@Repository("menCategoryDAO")

public class MenCategoryDAOImpl implements CategoryDAO {

	
	private static List<Category> menCategories = new ArrayList<>();
	/*
	 * Dummy Data for testing purpose
	 */
	static {
		Category category = new Category();
		//adding first category
		category.setId(1);
		category.setName("Tshirts");
		category.setDescription("Tshirts for men");
		category.setImageURL("Tshrt_1.png");
		
		menCategories.add(category);
		
		//second category
		category = new Category();
		
		category.setId(2);
		category.setName("Shirts");
		category.setDescription("Shirts for men");
		category.setImageURL("Shirt_1.png");
		
		menCategories.add(category);
		
		category = new Category();
		
		category.setId(3);
		category.setName("Jackets");
		category.setDescription("Jackets for men");
		category.setImageURL("Jacket_1.png");
		
		menCategories.add(category);
		
		category = new Category();
		
		category.setId(4);
		category.setName("Jeans");
		category.setDescription("Jeans for men");
		category.setImageURL("Jeans_1.png");
		
		menCategories.add(category);
	}
	@Override
	public List<Category> listCategory() {
		// TODO Auto-generated method stub
		return menCategories;
	}
	@Override
	public Category getCategory(int id) {
		// TODO Auto-generated method stub
		
		for(Category category : menCategories)
			if(category.getId()==id)
				return category;
		return null;
	}

	}


