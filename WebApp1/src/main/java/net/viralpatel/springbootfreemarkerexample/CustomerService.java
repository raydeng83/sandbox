package net.viralpatel.springbootfreemarkerexample;

import java.time.LocalDate;
import java.util.*;

import org.springframework.stereotype.Service;

@Service
public class CustomerService {

	private static List<Customer> customers = new ArrayList<>();
	static {
		customers.add(new Customer(101, "john.doe", "john.doe@example.com", LocalDate.of(1955, 2, 24), "John", "Doe", "US"));
		customers.add(new Customer(201, "samuel.adams", "samuel.adams@example.com", LocalDate.of(1955, 10, 28), "Samuel", "Adams", "US"));
		customers.add(new Customer(301, "nancy.hunt", "nancy.hunt@example.com", LocalDate.of(1973, 8, 21), "Le", "Deng", "US"));
	}

	public List<Customer> findAll() {

		return customers;
	}

	public void add(Customer customer) {
		customer.setCustomerId(generateRandomId());

		if (customer.getCountry() == null) {
			customer.setCountry("");
		}

		if (customer.getCustomerName() == null) {
			customer.setCustomerName("");
		}

		if (customer.getEmail() == null) {
			customer.setEmail("");
		}

		if (customer.getFirstName() == null) {
			customer.setFirstName("");
		}

		if (customer.getLastName() == null) {
			customer.setLastName("");
		}

		if (customer.getDateOfBirth() == null) {
			customer.setDateOfBirth(LocalDate.of(1111, 1, 1));
		}

		customers.add(customer);
	}

	private int generateRandomId() {

		return new Random().nextInt(1000);
	}

	public List<Customer> remove(int customerId) {
		customers.removeIf(c -> c.getCustomerId() == customerId);
		return findAll();
	}

	public Optional<Customer> find(int customerId) {
		
		return customers.stream().filter(c -> c.getCustomerId() == customerId).findFirst();
	}
}
