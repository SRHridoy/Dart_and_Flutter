import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../models/class_model.dart';

class ClassViewModel with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addClass(String className, List<String> students) async {
    await _firestore.collection('classes').add({
      'className': className,
      'students': students,
    });
    notifyListeners();
  }

  Stream<List<ClassModel>> getClasses() {
    return _firestore.collection('classes').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return ClassModel.fromMap({'id': doc.id, ...doc.data()});
      }).toList();
    });
  }
}