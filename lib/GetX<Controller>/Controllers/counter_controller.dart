

///   -------------------    Getx<CounterController>   --------------------------


import 'package:get/get.dart';

class CounterController extends GetxController{
  var count = 0.obs;
  var selected= false.obs;
  var selected1=RxBool(false);


  void increment(){
    count++;
    /// to change the font size
    if(count%2==0){
      selected.value =true;
      print("----------- Selected:${selected}");
      print("Even:${count}");
    }else{
      selected.value =false;
    }
  }
}




