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

    public List<User> getEntries() {
        return (List<User>) userRepository.findAll();
    }

    public void addEntry(User user) {
        userRepository.save(user);
    }

    public void updateUser(Long id, User user) {
    }

    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }
}
