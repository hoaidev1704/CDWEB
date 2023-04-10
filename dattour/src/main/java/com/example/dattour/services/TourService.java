package com.example.dattour.services;

import com.example.dattour.model.Booking;
import com.example.dattour.model.Customer;
import com.example.dattour.model.Tour;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class TourService implements ITourService{
	private List<Tour> tours = new ArrayList<>();
	private List<Customer> customers = new ArrayList<>();
	private List<Booking> bookings = new ArrayList<>();
	private static TourService instance = new TourService();
	public static final TourService getInstance() {
		return instance;
	}
	
	public TourService() {
		init();
	}
	
	private void init() {
		Tour tour = new Tour();
		tour.setId(1);
		tour.setDays("3 ngày 2 đêm");
		tour.setDepartureSchedule("Hằng ngày");
		tour.setDescription("Phú Quốc");
		tour.setTransportation("máy bay");
		tour.setPrice(150000);
		tours.add(tour);
	}
	@Override
	public List<Tour> getAllTours () {
		return tours;
	}
	
	@Override
	public Tour getTour (long tourId) {
		return tours.stream().filter(tour -> tour.getId().equals(tourId)).findFirst().orElse(null);
	}
	
	@Override
	public void saveCustomer (Customer customer) {
		customers.add(customer);
	}
	
	@Override
	public void saveBooking (Booking booking) {
		bookings.add(booking);
	}
}
