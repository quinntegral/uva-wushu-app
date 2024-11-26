package wushugroup.wushuapp.repository;

import wushugroup.wushuapp.entity.Category;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
    // Custom query methods (if any) can go here
}