import 'dart:ffi';
import 'dart:io';

class Student {
  String? id;
  String? name;
  int? age;
  String? course;
  String? address;
  double? mediumScore;

  Student();

  Student.contructor(this.id, this.name, this.age, this.course, this.address,
      this.mediumScore);

  @override
  String toString() {
    return 'Student{id: $id, name: $name, age: $age, course: $course, address: $address, mediumScore: $mediumScore}';
  }

  void input() {
    print('nhập id');
    String id = stdin.readLineSync() ?? "";
    print('nhập tên');
    String name = stdin.readLineSync() ?? "";
    print('nhập tuổi');
    int age = int.parse(stdin.readLineSync() ?? "0");
    print('nhập khoá học');
    String course = stdin.readLineSync() ?? "";
    print('nhập địa chỉ');
    String address = stdin.readLineSync() ?? "";
    print('nhập điểm trung bình');
    double mediumScore = double.parse(stdin.readLineSync() ?? "0.0");
    var student =
        Student.contructor(id, name, age, course, address, mediumScore);
    print(student);
  }
}
