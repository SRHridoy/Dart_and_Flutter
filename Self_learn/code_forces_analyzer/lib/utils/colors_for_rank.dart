
import 'package:flutter/material.dart';

Color getRankColor(String rank) {
  switch (rank.toLowerCase()) {
    case 'newbie':
      return Colors.grey;
    case 'pupil':
      return Colors.green;
    case 'specialist':
      return Colors.cyan;
    case 'expert':
      return Colors.blue;
    case 'candidate master':
      return Colors.purple;
    case 'master':
      return Colors.orange;
    case 'international master':
      return Colors.deepOrange;
    case 'grandmaster':
      return Colors.red;
    case 'international grandmaster':
      return Colors.redAccent;
    case 'legendary grandmaster':
      return Colors.black;
    case 'jiangly':
      return Colors.pink;
    default:
      return Colors.black; // Default color if rank doesn't match
  }
}
