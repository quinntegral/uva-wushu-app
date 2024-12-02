package wushugroup.wushuapp.repository;

import wushugroup.wushuapp.entity.User;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
    // You can add custom query methods if needed
}