package wushugroup.wushuapp.controller;

import wushugroup.wushuapp.entity.Cart;
import wushugroup.wushuapp.service.CartService;
import wushugroup.wushuapp.DTO.CartRequestDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/carts")
public class CartController {

    @Autowired
    private CartService cartService;

    // Get all carts
    @GetMapping
    public List<Cart> getAllCarts() {
        return cartService.getAllCarts();
    }

    // Get cart by ID
    @GetMapping("/{id}")
    public ResponseEntity<Cart> getCartById(@PathVariable("id") Integer cartId) {
        Optional<Cart> cart = cartService.getCartById(cartId);
        return cart.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    // Create a new cart
    @PostMapping
    public ResponseEntity<Cart> createCart(@RequestBody CartRequestDTO cartRequestDTO) {
        Cart createdCart = cartService.createCart(cartRequestDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdCart);
    }

    // Update an existing cart
    @PutMapping("/{id}")
    public ResponseEntity<Cart> updateCart(@PathVariable("id") Integer cartId, @RequestBody CartRequestDTO cartRequestDTO) {
        Cart updatedCart = cartService.updateCart(cartId, cartRequestDTO);
        return updatedCart != null ? ResponseEntity.ok(updatedCart) : ResponseEntity.notFound().build();
    }

    // Delete cart by ID
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCart(@PathVariable("id") Integer cartId) {
        cartService.deleteCart(cartId);
        return ResponseEntity.noContent().build();
    }
}