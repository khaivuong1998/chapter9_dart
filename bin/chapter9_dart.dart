import 'dart:io';

import 'package:chapter9_dart/chapter9_dart.dart' as chapter9_dart;
import 'package:chapter9_dart/model/student.dart';

void main(List<String> arguments) {
  var st = Student().input();
  print(st = Student().addStudent());
  print(st = Student().sortByName());
}
