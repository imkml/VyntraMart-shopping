package net.virtusa.vyntramartbackend.daoimpl;

import java.util.ArrayList;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.virtusa.vyntramartbackend.dao.CategoryDAO;
import net.virtusa.vyntramartbackend.dto.Category;


@Repository("womenCategoryDAO")


public class WomenCategoryDAOImpl implements CategoryDAO {

	private static List<Category> womenCategories = new ArrayList<>();
	/*
	 * Dummy Data for testing purpose
	 */
	static {
		Category category = new Category();
		//adding first category
		category.setId(1);
		category.setName("Tops");
		category.setDescription("Tops for women");
		category.setImageURL("Tops_1.png");
		
		womenCategories.add(category);
		
		//second category
		category = new Category();
		
		category.setId(2);
		category.setName("Jumpsuits");
		category.setDescription("Jumpsuits for women");
		category.setImageURL("Jumpsuit_1.png");
		
		womenCategories.add(category);
		
		category = new Category();
		
		category.setId(3);
		category.setName("Jeans");
		category.setDescription("Jeans for women");
		category.setImageURL("Jeans_2.png");
		
		womenCategories.add(category);
		
		category = new Category();
		
		category.setId(4);
		category.setName("Ethnic Dress");
		category.setDescription("Ethnic Dress for women");
		category.setImageURL("Ethnic_1.png");
		
		womenCategories.add(category);
	}
	@Override
	public List<Category> listCategory() {
		// TODO Auto-generated method stub
		return womenCategories;
	}
	
	@Override
	public Category getCategory(int id) {
		// TODO Auto-generated method stub
		for(Category category : womenCategories)
			if(category.getId()==id)
				return category;
		return null;
	}

}
