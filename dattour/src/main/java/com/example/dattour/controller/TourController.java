package com.example.dattour.controller;

import com.example.dattour.model.Booking;
import com.example.dattour.model.Customer;
import com.example.dattour.model.CustomerForm;
import com.example.dattour.model.Tour;
import com.example.dattour.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Random;

@Controller
public class TourController {
	@Autowired
	private ITourService tourService;
	
	@RequestMapping(value="/listTours", method = RequestMethod.GET)
	public String getAllTours(ModelMap modelMap) {
		List<Tour> tours = tourService.getAllTours();
 		modelMap.addAttribute("tours", tours);
		 return "listTours";
	}
	
	
	@RequestMapping(value="/bookTour", method = RequestMethod.GET)
	public String bookTour(ModelMap modelMap, @RequestParam(name ="tourId") long tourId) {
		Tour tour = tourService.getTour(tourId);
		modelMap.addAttribute("tour", tour);
		modelMap.addAttribute("customerForm", new CustomerForm());
		return "bookTour";
	}
	
	@RequestMapping(value="/bookTour", method = RequestMethod.POST)
	public String addTour (ModelMap modelMap, @ModelAttribute("customerForm") CustomerForm customerForm) {
		Tour tour = tourService.getTour(customerForm.getTourId());
		Random random = new Random();
		Customer customer = new Customer();
		customer.setAddress(customerForm.getAddress());
		customer.setEmail(customerForm.getEmail());
		customer.setId(random.nextInt(5));
		customer.setPhone(customerForm.getPhone());
		customer.setName(customer.getName());
		Booking booking = new Booking();
		booking.setCustomer(customer);
		booking.setId(random.nextInt(5));
		booking.setTour(tour);
		booking.setNoAdults(customerForm.getNumberAdults());
		booking.setNoChildren(customerForm.getNumberChildren());
		booking.setDepartureDate(customerForm.getStartDate());
		tourService.saveBooking(booking);
		modelMap.addAttribute("customerForm", customerForm);
		modelMap.addAttribute("tour", tour);
		return "bookDetail";
	}
	
	
}
