import 'package:flutter/material.dart';

import '../utils/colors_for_rank.dart';
import 'info_row.dart';

Widget ListDesign(BuildContext context, final user) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Player Profile",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),

          // Circular Avatar with Gradient Border
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.green, Colors.lightGreenAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.network(
                user.titlePhoto,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Handle Text
          Text(
            user.handle,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),

          // Card for Rank, Rating, and Contribution
          Card(
            elevation: 5,
            shadowColor: Colors.purple.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.deepPurple.shade50,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  buildRow("Rank:", user.rank, getRankColor(user.rank)),
                  const SizedBox(height: 8),
                  buildRow("Rating:", user.rating.toString(), Colors.blue),
                  const SizedBox(height: 8),
                  buildRow("Contribution:", user.contribution.toString(), Colors.green),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Card for Additional Information
          Card(
            elevation: 5,
            shadowColor: Colors.teal.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.teal.shade50,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  infoRow("First Name:", user.firstName),
                  infoRow("City:", user.city),
                  infoRow("Country:", user.country),
                  infoRow("Organization:", user.organization),
                  infoRow("Friends:", user.friendOfCount.toString()),
                  infoRow("Registered:", user.registrationTimeSeconds.toString()),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// Helper to build rows with labels and values with flexible colors
Widget buildRow(String label, String value, Color valueColor) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        label,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
      Text(
        value,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: valueColor,
        ),
      ),
    ],
  );
}
