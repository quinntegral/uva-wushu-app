package wushugroup.wushuapp.service;

import wushugroup.wushuapp.entity.Category;
import wushugroup.wushuapp.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    // Get all categories
    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }

    // Get category by ID
    public Optional<Category> getCategoryById(Integer categoryId) {
        return categoryRepository.findById(categoryId);
    }

    // Create a new category
    public Category createCategory(Category category) {
        return categoryRepository.save(category);
    }

    // Update an existing category
    public Category updateCategory(Integer categoryId, Category categoryDetails) {
        Optional<Category> category = categoryRepository.findById(categoryId);
        if (category.isPresent()) {
            Category updatedCategory = category.get();
            updatedCategory.setProductType(categoryDetails.getProductType());
            updatedCategory.setSize(categoryDetails.getSize());
            updatedCategory.setHeightRange(categoryDetails.getHeightRange());
            updatedCategory.setWeightRange(categoryDetails.getWeightRange());
            updatedCategory.setArmLengthRange(categoryDetails.getArmLengthRange());
            return categoryRepository.save(updatedCategory);
        }
        return null; // Or throw an exception
    }

    // Delete category by ID
    public void deleteCategory(Integer categoryId) {
        categoryRepository.deleteById(categoryId);
    }
}