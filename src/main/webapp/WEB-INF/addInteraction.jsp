<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.yourapp.models.Interaction" %>
<%@ page import="java.util.Date" %>
<%
    String customerId = request.getParameter("customerId");
%>
<html>
<head>
    <title>Add Interaction</title>
    <style>
        body { font-family: Arial, sans-serif; }
        .form-container { margin: 20px; padding: 20px; border: 1px solid #ccc; }
        input, textarea { margin: 5px 0; padding: 10px; width: 100%; }
        button { padding: 10px; }
    </style>
</head>
<body>
<h1>Add Interaction</h1>
<div class="form-container">
    <form action="AddInteractionServlet" method="post">
        <input type="hidden" name="customerId" value="<%= customerId %>"/>
        <label>Date:</label>
        <input type="date" name="date" required/>

        <label>Type:</label>
        <input type="text" name="type" required/>

        <label>Notes:</label>
        <textarea name="notes" required></textarea>

        <button type="submit">Add Interaction</button>
    </form>
</div>
</body>
</html>
