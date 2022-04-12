import 'package:get/get.dart';
class Student extends GetxController{

  var name = "Qaim asdf fg".obs;
  var age  =  25.obs;
  var student_name =[].obs;

 // var name=RxString("Qaim").obs;



  @override
  void onInit(){
    showlist();
    super.onInit();
  }
  void showlist(){
    student_name.value =["Qaim", "Huzaifa", "Zahid", "Haris", "Arshad", "Waseem",12,1.1];

  }
  void uper(){
    name.value = name.toUpperCase();
    age.value++;
}


}



