package com.yourapp.services;

import com.yourapp.models.Interaction;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class InteractionService {
    // Static map to hold interactions associated with customer IDs
    private static final Map<String, List<Interaction>> interactions = new HashMap<>();

    // Static block to initialize sample data
    static {
        initializeSampleData();
    }

    // Method to populate the static map with sample interaction data
    private static void initializeSampleData() {
        // Sample interactions for John Doe
        List<Interaction> johnInteractions = new ArrayList<>();
        johnInteractions.add(new Interaction("2024-01-01", "Call", "Discussed product updates."));
        johnInteractions.add(new Interaction("2024-01-15", "Email", "Follow-up on previous call."));
        interactions.put("1", johnInteractions);

        // Sample interactions for Jane Smith
        List<Interaction> janeInteractions = new ArrayList<>();
        janeInteractions.add(new Interaction("2024-02-01", "Meeting", "Reviewed project requirements."));
        interactions.put("2", janeInteractions);
    }

    /**
     * Retrieve a list of interactions for a specific customer.
     * @param customerId The ID of the customer whose interactions are to be retrieved.
     * @return A list of interactions associated with the customer, or an empty list if none found.
     */
    public List<Interaction> getInteractionsByCustomerId(String customerId) {
        return interactions.getOrDefault(customerId, new ArrayList<>());
    }
}
