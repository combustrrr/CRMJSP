package com.yourapp.servlets;

import com.yourapp.models.Customer;
import com.yourapp.services.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class CustomerServlet extends HttpServlet {
    private final CustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String customerId = request.getParameter("customerId");

        // Check if customerId is provided
        if (customerId == null || customerId.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Customer ID is required.");
            return;
        }

        Customer customer = customerService.getCustomerById(customerId);

        // Check if customer was found
        if (customer == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Customer not found.");
            return;
        }

        request.setAttribute("customer", customer);
        request.getRequestDispatcher("/WEB-INF/customerDetails.jsp").forward(request, response);
    }
}
