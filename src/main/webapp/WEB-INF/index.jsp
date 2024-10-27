<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.yourapp.models.Customer" %>
<%@ page import="com.yourapp.models.Interaction" %>
<%@ page import="com.yourapp.services.InteractionService" %>
<%@ page import="java.util.List" %>

<%
    Customer customer = (Customer) request.getAttribute("customer");
    InteractionService interactionService = new InteractionService();
    List<Interaction> interactions = null;

    // Check if the customer is not null before retrieving interactions
    if (customer != null) {
        interactions = interactionService.getInteractionsByCustomerId(customer.getId());
    }
%>
<html>
<head>
    <title>Customer Details</title>
    <style>
        body { font-family: Arial, sans-serif; }
        .customer-info, .interaction-history { margin: 20px 0; padding: 10px; border: 1px solid #ccc; }
        table { width: 100%; border-collapse: collapse; }
        table, th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
        .error { color: red; }
    </style>
</head>
<body>
<h1>Customer Details</h1>

<% if (customer != null) { %>
<div class="customer-info">
    <h2><%= customer.getName() %></h2>
    <p><strong>Email:</strong> <%= customer.getEmail() %></p>
    <p><strong>Phone:</strong> <%= customer.getPhone() %></p>
    <p><strong>Company:</strong> <%= customer.getCompany() %></p>
</div>

<h2>Interaction History</h2>
<div class="interaction-history">
    <table>
        <thead>
        <tr><th>Date</th><th>Type</th><th>Notes</th></tr>
        </thead>
        <tbody>
        <% if (interactions != null && !interactions.isEmpty()) { %>
        <% for (Interaction interaction : interactions) { %>
        <tr>
            <td><%= interaction.getDate() %></td>
            <td><%= interaction.getType() %></td>
            <td><%= interaction.getNotes() %></td>
        </tr>
        <% } %>
        <% } else { %>
        <tr>
            <td colspan="3">No interactions found.</td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
<% } else { %>
<div class="error">
    <p>Customer not found. Please check the customer ID and try again.</p>
    <a href="customerList.jsp">Go back to Customer List</a>
</div>
<% } %>

</body>
</html>
