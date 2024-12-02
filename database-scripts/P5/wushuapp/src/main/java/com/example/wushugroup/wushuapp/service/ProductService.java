package wushugroup.wushuapp.service;

import wushugroup.wushuapp.entity.Product;
import wushugroup.wushuapp.entity.Category;

import wushugroup.wushuapp.DTO.ProductRequestDTO;
import wushugroup.wushuapp.repository.ProductRepository;
import wushugroup.wushuapp.repository.CategoryRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
public class ProductService {

    private static final Logger logger = LoggerFactory.getLogger(ProductService.class);

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    // Get all products
    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    // Get product by ID
    public Optional<Product> getProductById(Integer productId) {
        return productRepository.findById(productId);
    }

    public Product createProduct(ProductRequestDTO productRequest) {
        Product product = new Product();

        // Set other product fields
        product.setDescription(productRequest.getDescription());
        product.setCost(productRequest.getCost());
        product.setStarAmount(productRequest.getStarAmount());

        // Resolve Category by categoryID
        Category category = categoryRepository.findById(productRequest.getCategoryID())
                .orElseThrow(() -> new RuntimeException("Category not found"));
        product.setCategory(category);

        return productRepository.save(product);
    }

    // Update an existing product
    public Product updateProduct(Integer productId, ProductRequestDTO productRequest) {
        // Find the existing product by ID
        Optional<Product> productOptional = productRepository.findById(productId);

        if (productOptional.isPresent()) {
            Product existingProduct = productOptional.get();

            // Resolve Category using the provided categoryID in the DTO
            Category category = categoryRepository.findById(productRequest.getCategoryID())
                    .orElseThrow(() -> new RuntimeException("Category not found"));

            // Update fields in the existing product
            existingProduct.setCategory(category);
            existingProduct.setDescription(productRequest.getDescription());
            existingProduct.setCost(productRequest.getCost());
            existingProduct.setStarAmount(productRequest.getStarAmount());

            // Save and return the updated product
            return productRepository.save(existingProduct);
        } else {
            // Handle the case where the product is not found
            throw new RuntimeException("Product not found with ID: " + productId);
        }
    }

    // Delete product by ID
    public void deleteProduct(Integer productId) {
        productRepository.deleteById(productId);
    }
}