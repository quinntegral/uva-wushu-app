package wushugroup.wushuapp.controller;

import wushugroup.wushuapp.entity.PromoCode;
import wushugroup.wushuapp.service.PromoCodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/promocodes")
public class PromoCodeController {

    @Autowired
    private PromoCodeService promoCodeService;

    // Get all promo codes
    @GetMapping
    public List<PromoCode> getAllPromoCodes() {
        return promoCodeService.getAllPromoCodes();
    }

    // Get promo code by ID
    @GetMapping("/{id}")
    public ResponseEntity<PromoCode> getPromoCodeById(@PathVariable("id") Integer promoCodeId) {
        Optional<PromoCode> promoCode = promoCodeService.getPromoCodeById(promoCodeId);
        return promoCode.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    // Create a new promo code
    @PostMapping
    public ResponseEntity<PromoCode> createPromoCode(@RequestBody PromoCode promoCode) {
        PromoCode createdPromoCode = promoCodeService.createPromoCode(promoCode);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdPromoCode);
    }

    // Update an existing promo code
    @PutMapping("/{id}")
    public ResponseEntity<PromoCode> updatePromoCode(@PathVariable("id") Integer promoCodeId, @RequestBody PromoCode promoCodeDetails) {
        PromoCode updatedPromoCode = promoCodeService.updatePromoCode(promoCodeId, promoCodeDetails);
        return updatedPromoCode != null ? ResponseEntity.ok(updatedPromoCode) : ResponseEntity.notFound().build();
    }

    // Delete promo code by ID
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletePromoCode(@PathVariable("id") Integer promoCodeId) {
        promoCodeService.deletePromoCode(promoCodeId);
        return ResponseEntity.noContent().build();
    }
}