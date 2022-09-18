package ch.zli.coworkingspace.repositories;

import ch.zli.coworkingspace.model.Booking;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

@Repository
@EnableJpaRepositories
@EntityScan
public interface BookingRepository extends JpaRepository<Booking, Long> {
}
