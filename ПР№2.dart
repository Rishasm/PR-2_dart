import 'dart:io';
void main() {
  List<String> students = ["Иванов", "Петров", "Сидоров", "Смирнова", "Козлова"];
  List<String> subjects = ["Математика", "Физика", "Информатика", "История"];
  
  List<List<int>> grades = [
    [5, 4, 5, 4], 
    [3, 2, 4, 3], 
    [4, 5, 4, 5],
    [5, 5, 5, 5],
    [3, 3, 2, 4],
  ];

  print("СВОДНАЯ ТАБЛИЦА УСПЕВАЕМОСТИ");

  stdout.write("Студент".padRight(12));
  for (var subject in subjects) {
    stdout.write(subject.padRight(12));
  }
  stdout.write("Ср.балл".padRight(8));
  print("");
  
  print("-" * (12 + subjects.length * 12 + 8));
  
  List<double> avgSubject = List.filled(subjects.length, 0);
  
  for (int i = 0; i < students.length; i++) {
    stdout.write(students[i].padRight(12));
    double sum = 0;
    
    for (int j = 0; j < subjects.length; j++) {
      int grade = grades[i][j];
      stdout.write(grade.toString().padRight(12));
      sum += grade;
      avgSubject[j] += grade;
    }
    
    double avg = sum / subjects.length;
    print(avg.toStringAsFixed(2).padRight(8));
  }
  
  stdout.write("Ср.по предм.".padRight(12));
  double totalSum = 0;
  for (int j = 0; j < subjects.length; j++) {
    double avg = avgSubject[j] / students.length;
    stdout.write(avg.toStringAsFixed(2).padRight(12));
    totalSum += avgSubject[j];
  }
  double totalAvg = totalSum / (students.length * subjects.length);
  print(totalAvg.toStringAsFixed(2).padRight(8));
  
  print("");

  print("ПОИСК СТУДЕНТА");
  String searchName = "Петров";
  print("Результаты поиска: $searchName");
  
  int studentIndex = students.indexOf(searchName);
  if (studentIndex != -1) {
    double sum = 0;
    for (int j = 0; j < subjects.length; j++) {
      int grade = grades[studentIndex][j];
      print("  $searchName - $grade по предмету ${subjects[j]}");
      sum += grade;
    }
    double avg = sum / subjects.length;
    
    String category;
    if (avg == 5) {
      category = "отличник";
    } else if (avg >= 4) {
      category = "хорошист";
    } else {
      category = "остальные";
    }
    
    print("  Средний балл: ${avg.toStringAsFixed(2)}");
    print("  Категория: $category");
  } else {
    print("Студент $searchName не найден");
  }
  print("");

  print("УНИКАЛЬНЫЕ ОЦЕНКИ");
  Set<int> uniqueGrades = {};
  for (var studentGrades in grades) {
    uniqueGrades.addAll(studentGrades);
  }
  
  List<int> sortedGrades = uniqueGrades.toList()..sort();
  sortedGrades.sort();
  print("Оценки в журнале: $sortedGrades");
  print("");

  print("МАКСИМАЛЬНЫЕ И МИНИМАЛЬНЫЕ ОЦЕНКИ");
  for (int j = 0; j < subjects.length; j++) {
    int maxGrade = grades[0][j];
    int minGrade = grades[0][j];
    List<String> maxStudents = [];
    List<String> minStudents = [];
    
    for (int i = 0; i < students.length; i++) {
      int grade = grades[i][j];
      
      if (grade > maxGrade) {
        maxGrade = grade;
        maxStudents = [students[i]];
      } else if (grade == maxGrade) {
        maxStudents.add(students[i]);
      }
      
      if (grade < minGrade) {
        minGrade = grade;
        minStudents = [students[i]];
      } else if (grade == minGrade) {
        minStudents.add(students[i]);
      }
    }
    
    print("${subjects[j]}:");
    print("  Максимальная: $maxGrade (${maxStudents.join(', ')})");
    print("  Минимальная: $minGrade (${minStudents.join(', ')})");
  }
  print("");

 print("СТУДЕНТЫ С РОВНО ОДНОЙ ДВОЙКОЙ");
bool foundTwo = false;

for (int i = 0; i < students.length; i++) {
  int twoCount = 0;
  String twoSubject = "";
  
  for (int j = 0; j < subjects.length; j++) {
    if (grades[i][j] == 2) {
      twoCount++;
      twoSubject = subjects[j];
    }
  }
  
  if (twoCount == 1) {
    print("${students[i]} - двойка по предмету $twoSubject");
    foundTwo = true;
  }
}

if (foundTwo == false) {
  print("Нет студентов с ровно одной двойкой");
}
print("");

  print("ПРЕДМЕТЫ ВЫШЕ ОБЩЕГО СРЕДНЕГО");
  print("Общий средний балл: ${totalAvg.toStringAsFixed(2)}");
  
  for (int j = 0; j < subjects.length; j++) {
    double avg = avgSubject[j] / students.length;
    if (avg > totalAvg) {
      print("${subjects[j]}: ${avg.toStringAsFixed(2)}");
    }
  }
  print("");

  print("СТАТИСТИКА ПО КАТЕГОРИЯМ");
  int excellent = 0;
  int good = 0;
  int other = 0;
  
  for (int i = 0; i < students.length; i++) {
    double sum = 0;
    for (int j = 0; j < subjects.length; j++) {
      sum += grades[i][j];
    }
    double avg = sum / subjects.length;
    
    if (avg == 5) {
      excellent++;
    } else if (avg >= 4) {
      good++;
    } else {
      other++;
    }
  }
  
  print("Отличники (ср.балл = 5): $excellent");
  print("Хорошисты (ср.балл >= 4): $good");
  print("Остальные (ср.балл < 4): $other");
}