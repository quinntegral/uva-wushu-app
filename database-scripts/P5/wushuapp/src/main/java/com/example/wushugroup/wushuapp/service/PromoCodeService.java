package wushugroup.wushuapp.service;

import wushugroup.wushuapp.entity.PromoCode;
import wushugroup.wushuapp.repository.PromoCodeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PromoCodeService {

    @Autowired
    private PromoCodeRepository promoCodeRepository;

    // Get all promo codes
    public List<PromoCode> getAllPromoCodes() {
        return promoCodeRepository.findAll();
    }

    // Get promo code by ID
    public Optional<PromoCode> getPromoCodeById(Integer promoCodeId) {
        return promoCodeRepository.findById(promoCodeId);
    }

    // Create a new promo code
    public PromoCode createPromoCode(PromoCode promoCode) {
        return promoCodeRepository.save(promoCode);
    }

    // Update an existing promo code
    public PromoCode updatePromoCode(Integer promoCodeId, PromoCode promoCodeDetails) {
        Optional<PromoCode> promoCode = promoCodeRepository.findById(promoCodeId);
        if (promoCode.isPresent()) {
            PromoCode updatedPromoCode = promoCode.get();
            updatedPromoCode.setCode(promoCodeDetails.getCode());
            updatedPromoCode.setPercent(promoCodeDetails.getPercent());
            return promoCodeRepository.save(updatedPromoCode);
        }
        return null; // Or throw an exception
    }

    // Delete promo code by ID
    public void deletePromoCode(Integer promoCodeId) {
        promoCodeRepository.deleteById(promoCodeId);
    }
}