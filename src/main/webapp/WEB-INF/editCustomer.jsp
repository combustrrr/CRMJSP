<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.yourapp.models.Customer" %>
<%@ page import="com.yourapp.services.CustomerService" %>
<%
    String customerId = request.getParameter("customerId");
    CustomerService customerService = new CustomerService();
    Customer customer = customerService.getCustomerById(customerId);
%>
<html>
<head>
    <title>Edit Customer</title>
    <style>
        body { font-family: Arial, sans-serif; }
        .form-container { margin: 20px; padding: 20px; border: 1px solid #ccc; }
        input { margin: 5px 0; padding: 10px; width: 100%; }
        button { padding: 10px; }
    </style>
</head>
<body>
<h1>Edit Customer</h1>
<div class="form-container">
    <form action="UpdateCustomerServlet" method="post">
        <input type="hidden" name="customerId" value="<%= customer.getId() %>"/>
        <label>Name:</label>
        <input type="text" name="name" value="<%= customer.getName() %>" required/>

        <label>Email:</label>
        <input type="email" name="email" value="<%= customer.getEmail() %>" required/>

        <label>Phone:</label>
        <input type="text" name="phone" value="<%= customer.getPhone() %>" required/>

        <label>Company:</label>
        <input type="text" name="company" value="<%= customer.getCompany() %>" required/>

        <button type="submit">Update Customer</button>
    </form>
</div>
</body>
</html>
