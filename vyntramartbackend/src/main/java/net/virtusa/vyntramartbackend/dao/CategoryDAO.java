package net.virtusa.vyntramartbackend.dao;

import java.util.List;

import net.virtusa.vyntramartbackend.dto.Category;

public interface CategoryDAO {
	
	List <Category> listCategory();
	
	Category getCategory(int id);
}
