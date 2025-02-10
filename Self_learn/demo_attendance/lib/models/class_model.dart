class ClassModel {
  String id;
  String className;
  List<String> students;

  ClassModel({
    required this.id,
    required this.className,
    required this.students,
  });

  factory ClassModel.fromMap(Map<String, dynamic> data) {
    return ClassModel(
      id: data['id'],
      className: data['className'],
      students: List<String>.from(data['students']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'className': className,
      'students': students,
    };
  }
}