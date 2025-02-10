import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../models/attendance_model.dart';

class AttendanceViewModel with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> takeAttendance(String classId, Map<String, bool> attendance) async {
    await _firestore.collection('attendance').add({
      'classId': classId,
      'date': DateTime.now(),
      'attendance': attendance,
    });
    notifyListeners();
  }

  Stream<List<AttendanceModel>> getAttendance(String classId) {
    return _firestore
        .collection('attendance')
        .where('classId', isEqualTo: classId)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return AttendanceModel.fromMap({'id': doc.id, ...doc.data()});
      }).toList();
    });
  }
}