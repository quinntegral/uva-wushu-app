package wushugroup.wushuapp.service;

import wushugroup.wushuapp.entity.User;
import wushugroup.wushuapp.entity.Product;
import wushugroup.wushuapp.DTO.UserRequestDTO;

import wushugroup.wushuapp.repository.UserRepository;
import wushugroup.wushuapp.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ProductRepository productRepository;

    // Get all users
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    // Get user by ID
    public Optional<User> getUserById(Integer userId) {
        return userRepository.findById(userId);
    }

    // Create a new user
    public User createUser(UserRequestDTO userRequestDTO) {
        User user = new User();

        // Set user fields from DTO
        user.setName(userRequestDTO.getName());
        user.setHeight(userRequestDTO.getHeight());
        user.setWeight(userRequestDTO.getWeight());
        user.setArmLength(userRequestDTO.getArmLength());
        user.setEmail(userRequestDTO.getEmail());
        user.setPassword(userRequestDTO.getPassword());
        user.setPhoneNumber(userRequestDTO.getPhoneNumber());
        user.setExecUser(userRequestDTO.isExecUser());

        // Resolve currentWeapon and currentApparel by their IDs
        Product currentWeapon = productRepository.findById(userRequestDTO.getCurrentWeaponID())
                .orElseThrow(() -> new RuntimeException("currentWeapon not found"));
        user.setCurrentWeapon(currentWeapon);

        Product currentApparel = productRepository.findById(userRequestDTO.getCurrentApparelID())
                .orElseThrow(() -> new RuntimeException("currentApparel not found"));
        user.setCurrentApparel(currentApparel);


        return userRepository.save(user);
    }

    // Update an existing user
    public User updateUser(Integer userId, UserRequestDTO userRequestDTO) {
        Optional<User> userOptional = userRepository.findById(userId);
        if (userOptional.isPresent()) {
            User user = userOptional.get();

            // Update user fields from DTO
            user.setName(userRequestDTO.getName());
            user.setHeight(userRequestDTO.getHeight());
            user.setWeight(userRequestDTO.getWeight());
            user.setArmLength(userRequestDTO.getArmLength());
            user.setEmail(userRequestDTO.getEmail());
            user.setPassword(userRequestDTO.getPassword());
            user.setPhoneNumber(userRequestDTO.getPhoneNumber());
            user.setExecUser(userRequestDTO.isExecUser());

            // Update currentWeapon and currentApparel by their IDs
            Optional<Product> currentWeapon = productRepository.findById(userRequestDTO.getCurrentWeaponID());
            currentWeapon.ifPresent(user::setCurrentWeapon);

            Optional<Product> currentApparel = productRepository.findById(userRequestDTO.getCurrentApparelID());
            currentApparel.ifPresent(user::setCurrentApparel);

            return userRepository.save(user);
        } else {
            throw new RuntimeException("User not found");
        }
    }

    // Delete user by ID
    public void deleteUser(Integer userId) {
        userRepository.deleteById(userId);
    }
}