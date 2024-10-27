package com.yourapp.services;

import com.yourapp.models.Customer;

import java.util.HashMap;
import java.util.Map;

public class CustomerService {
    // Static map to hold customer data (in-memory)
    private static final Map<String, Customer> customers = new HashMap<>();

    // Static block to initialize sample data
    static {
        initializeSampleData();
    }

    // Method to populate the static map with sample customer data
    private static void initializeSampleData() {
        customers.put("1", new Customer("1", "John Doe", "john@example.com", "123-456-7890", "Example Corp"));
        customers.put("2", new Customer("2", "Jane Smith", "jane@example.com", "098-765-4321", "Sample Inc"));
    }

    /**
     * Retrieve a customer by their ID.
     * @param id The ID of the customer to retrieve.
     * @return The Customer object if found, or null if not found.
     */
    public Customer getCustomerById(String id) {
        Customer customer = customers.get(id);

        // Log if the customer was not found
        if (customer == null) {
            System.out.println("Customer not found for ID: " + id);
        }

        return customer;
    }
}
