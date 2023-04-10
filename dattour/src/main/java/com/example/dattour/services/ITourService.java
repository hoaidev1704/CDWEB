package com.example.dattour.services;

import com.example.dattour.model.Booking;
import com.example.dattour.model.Customer;
import com.example.dattour.model.Tour;

import java.util.List;

public interface ITourService {
	List<Tour> getAllTours();
	Tour getTour(long tourId);
	void saveCustomer (Customer customer);
	void saveBooking (Booking booking);
	
}
