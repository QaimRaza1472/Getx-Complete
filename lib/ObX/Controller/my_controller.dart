import 'package:get/get.dart';
import 'my_student.dart';

class MyController extends GetxController{

  var  my_student = MyStudent(name: "qaim raza",age: 25).obs;

  void convertToUpperCase(){
    my_student.update((my_student) {
      my_student?.name = my_student.name.toUpperCase();
    });
  }

}



