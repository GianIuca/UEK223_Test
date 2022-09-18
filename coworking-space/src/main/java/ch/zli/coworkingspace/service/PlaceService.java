package ch.zli.coworkingspace.service;

import ch.zli.coworkingspace.model.Place;
import ch.zli.coworkingspace.repositories.PlaceRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlaceService {
    PlaceRepository placeRepository;

    public PlaceService(PlaceRepository placeRepository) {
        this.placeRepository = placeRepository;
    }

    public List<Place> getPlaces() {
        return (List<Place>) placeRepository.findAll();
    }

    public void addPlace(Place place) {
        placeRepository.save(place);
    }

    public void updatePlace(Long id, Place place) {
        Place placeToUpdate = placeRepository.findById(id).get();
        placeToUpdate.setDescription(place.getDescription());
        placeToUpdate.setLocation(place.getLocation());
        placeToUpdate.setStory(place.getStory());

    }

    public void deletePlace(Long id) {
        placeRepository.deleteById(id);
    }

}
