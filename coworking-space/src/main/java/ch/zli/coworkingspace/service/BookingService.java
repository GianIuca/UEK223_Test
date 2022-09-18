package ch.zli.coworkingspace.service;

import ch.zli.coworkingspace.model.Booking;
import ch.zli.coworkingspace.repositories.BookingRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookingService {
    BookingRepository bookingRepository;

    public BookingService(BookingRepository bookingRepository) {
        this.bookingRepository = bookingRepository;
    }

    public List<Booking> getBookings() {
        return (List<Booking>) bookingRepository.findAll();
    }

    public void addBooking(Booking booking) {
        bookingRepository.save(booking);
    }

    public void updatePlace(Long id, Booking booking) {
        Booking bookingToUpdate = bookingRepository.findById(id).get();
        bookingToUpdate.setStart(booking.getStart());
        bookingToUpdate.setEnd(booking.getEnd());

    }

    public void deletePlace(Long id) {
        bookingRepository.deleteById(id);
    }


}
