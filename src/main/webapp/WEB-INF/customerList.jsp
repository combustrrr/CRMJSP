<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Details</title>
    <style>
        body { font-family: Arial, sans-serif; }
        .customer-info, .interaction-history { margin: 20px 0; padding: 10px; border: 1px solid #ccc; }
        table { width: 100%; border-collapse: collapse; }
        table, th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
    </style>
</head>
<body>
<h1>Customer Details</h1>
<div class="customer-info">
    <h2>John Doe</h2>
    <p><strong>Email:</strong> john@example.com</p>
    <p><strong>Phone:</strong> 123-456-7890</p>
    <p><strong>Company:</strong> Example Corp</p>
</div>

<h2>Interaction History</h2>
<div class="interaction-history">
    <table>
        <thead>
        <tr><th>Date</th><th>Type</th><th>Notes</th></tr>
        </thead>
        <tbody>
        <tr>
            <td>2024-10-01</td>
            <td>Call</td>
            <td>Discussed project updates</td>
        </tr>
        <tr>
            <td>2024-10-15</td>
            <td>Email</td>
            <td>Sent project proposal</td>
        </tr>
        </tbody>
    </table>
</div>

<div class="actions">
    <a href="editCustomer.jsp?customerId=1">Edit Customer</a>
    <a href="addInteraction.jsp?customerId=1">Add Interaction</a>
</div>
</body>
</html>
