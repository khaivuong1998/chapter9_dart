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
    String string = stdin.readLineSync() ?? "";
    final alphanumeric = RegExp(r'^-?[0-9]+$');
    int age;
    if (string.isEmpty || !alphanumeric.hasMatch(string)) {
      while (true) {
        print('bạn nhập sai định dạng, mời nhập lại');
        string = stdin.readLineSync() ?? "";
        if (alphanumeric.hasMatch(string)) {
          age = int.parse(string);
          break;
        }
      }
    }
    age = int.parse(string);
    print('nhập khoá học');
    String course = stdin.readLineSync() ?? "";
    print('nhập địa chỉ');
    String address = stdin.readLineSync() ?? "";
    print('nhập điểm trung bình');
    String string1 = stdin.readLineSync() ?? "";
    double mediumScore;
    if (string1.isEmpty || !alphanumeric.hasMatch(string1)) {
      while (true) {
        print('bạn nhập sai định dạng, mời nhập lại');
        string1 = stdin.readLineSync() ?? "";
        if (alphanumeric.hasMatch(string1)) {
          mediumScore = double.parse(string1);
          break;
        }
      }
    }
    mediumScore = double.parse(string1);
    var student =
        Student.contructor(id, name, age, course, address, mediumScore);
    print(student);
  }
}
