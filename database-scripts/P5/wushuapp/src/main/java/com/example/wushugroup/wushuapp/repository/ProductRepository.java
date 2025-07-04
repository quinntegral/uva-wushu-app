package wushugroup.wushuapp.repository;

import wushugroup.wushuapp.entity.Product;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
    // You can add custom query methods if needed
}