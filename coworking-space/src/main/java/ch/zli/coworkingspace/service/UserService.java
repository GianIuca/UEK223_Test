package ch.zli.coworkingspace.service;

import ch.zli.coworkingspace.model.User;
import ch.zli.coworkingspace.repositories.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class UserService {
    UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getUsers() {
        return (List<User>) userRepository.findAll();
    }

    public void addUser(User User) {
        userRepository.save(User);
    }

    public void updateUser(Long id, User user) {
        User userToUpdate = userRepository.findById(id).get();
        userToUpdate.setFirstname(user.getFirstname());
        userToUpdate.setLastname(user.getLastname());
        userToUpdate.setEmail(user.getEmail());
        userToUpdate.setPassword(user.getPassword());
        userToUpdate.setRole(user.getRole());
        userRepository.save(userToUpdate);
    }

    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }
}
