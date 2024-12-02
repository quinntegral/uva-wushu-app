package wushugroup.wushuapp.repository;

import wushugroup.wushuapp.entity.PromoCode;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface PromoCodeRepository extends JpaRepository<PromoCode, Integer> {
    // You can add custom query methods if needed
}