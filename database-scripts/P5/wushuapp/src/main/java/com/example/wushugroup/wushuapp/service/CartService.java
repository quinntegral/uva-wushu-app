package wushugroup.wushuapp.service;

import wushugroup.wushuapp.entity.Cart;
import wushugroup.wushuapp.entity.PromoCode;
import wushugroup.wushuapp.entity.User;

import wushugroup.wushuapp.DTO.CartRequestDTO;

import wushugroup.wushuapp.repository.CartRepository;
import wushugroup.wushuapp.repository.PromoCodeRepository;
import wushugroup.wushuapp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CartService {

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PromoCodeRepository promoCodeRepository;

    // Get all carts
    public List<Cart> getAllCarts() {
        return cartRepository.findAll();
    }

    // Get cart by ID
    public Optional<Cart> getCartById(Integer cartId) {
        return cartRepository.findById(cartId);
    }

    // Create a new cart
    public Cart createCart(CartRequestDTO cartRequestDTO) {
        // Create a new Cart entity from CartDTO
        Cart cart = new Cart();

        // Find PromoCode and User by their IDs and set them
        PromoCode promoCode = promoCodeRepository.findById(cartRequestDTO.getPromoCodeID())
                .orElseThrow(() -> new RuntimeException("PromoCode not found"));
        cart.setPromoCode(promoCode);

        User user = userRepository.findById(cartRequestDTO.getUserID())
                .orElseThrow(() -> new RuntimeException("User not found"));
        cart.setUser(user);

        // Set other properties
        cart.setTotalCost(cartRequestDTO.getTotalCost());

        // Save the cart entity and return it
        return cartRepository.save(cart);
    }

    // Update an existing cart
    public Cart updateCart(Integer cartId, CartRequestDTO cartRequestDTO) {
        Optional<Cart> cart = cartRepository.findById(cartId);
        if (cart.isPresent()) {
            Cart updatedCart = cart.get();

            // Find PromoCode and User by their IDs and set them
            PromoCode promoCode = promoCodeRepository.findById(cartRequestDTO.getPromoCodeID())
                    .orElseThrow(() -> new RuntimeException("PromoCode not found"));
            updatedCart.setPromoCode(promoCode);

            User user = userRepository.findById(cartRequestDTO.getUserID())
                    .orElseThrow(() -> new RuntimeException("User not found"));
            updatedCart.setUser(user);

            // Set other properties
            updatedCart.setTotalCost(cartRequestDTO.getTotalCost());

            // Save the updated cart entity and return it
            return cartRepository.save(updatedCart);
        }
        return null; // Or throw an exception if not found
    }

    // Delete cart by ID
    public void deleteCart(Integer cartId) {
        cartRepository.deleteById(cartId);
    }
}