package wushugroup.wushuapp.repository;

import wushugroup.wushuapp.entity.Cart;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {
    // You can add custom query methods if needed
}