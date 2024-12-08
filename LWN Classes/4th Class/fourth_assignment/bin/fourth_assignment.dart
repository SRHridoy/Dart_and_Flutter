void main() {
//   Do 4 types function example:
// 1. No argument - No return type
  purposeOfThisCourse();
// 2. With argument - No return type
  durationOfThisCourse(4);
// 3. No argument - With return type
  print(teachingSkillOfInstructors());
// 4. With argument - With return type
  print(currentRunningBatch(10));
}

// 1. No argument - No return type
purposeOfThisCourse() {
  print('Learn Flutter and Crack a job!');
}

// 2. With argument - No return type
durationOfThisCourse(int month) {
  print('This course is $month months long.');
}

// 3. No argument - With return type
String teachingSkillOfInstructors() {
  return 'Teaching Skill of the eduacator is good.';
}

// 4. With argument - With return type
String currentRunningBatch(int no) {
  return 'Current Running Batch $no...';
}
