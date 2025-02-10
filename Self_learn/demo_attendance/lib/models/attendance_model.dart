class AttendanceModel {
  String id;
  String classId;
  DateTime date;
  Map<String, bool> attendance;

  AttendanceModel({
    required this.id,
    required this.classId,
    required this.date,
    required this.attendance,
  });

  factory AttendanceModel.fromMap(Map<String, dynamic> data) {
    return AttendanceModel(
      id: data['id'],
      classId: data['classId'],
      date: data['date'].toDate(),
      attendance: Map<String, bool>.from(data['attendance']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'classId': classId,
      'date': date,
      'attendance': attendance,
    };
  }
}