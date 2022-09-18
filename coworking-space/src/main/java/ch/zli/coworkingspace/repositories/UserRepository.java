package ch.zli.coworkingspace.repositories;

import ch.zli.coworkingspace.model.User;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

import javax.persistence.Entity;

@Repository
@EnableJpaRepositories
@EntityScan
public interface UserRepository extends JpaRepository<User, Long> {

}
