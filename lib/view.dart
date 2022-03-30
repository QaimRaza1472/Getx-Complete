import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/texting_getx.dart';


class View extends StatelessWidget {
   View({Key? key}) : super(key: key);

   //var student = Student();

   Student student = Get.put(Student());



// 0139 790 220 1503

// Husnain Iqbal

   @override
  Widget build(BuildContext context) {
    print("    ");
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("State Management"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Obx((){
                return Column(
                  children: [
                    Text('Student Name: ${student.name.value}',
                     style: const TextStyle(
                    color: Colors.red,
                    fontSize: 29,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                    Text('Age: ${student.age.value}',
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      height:250,
                      color: Colors.yellow,
                      width:double.infinity,
                      child: ListView.builder(
                        itemCount:student.student_name.length,
                          itemBuilder: (context,index){
                            return
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Row(
                                    children: [
                                      const Text('Student Name: ',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w900,
                                      ),
                                       ),
                                      Text(
                                        '${student.student_name[index]}',
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 29,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                          }
                          ),
                    ),



                  ],
                );
          },
            ),
            RaisedButton(
              onPressed: () {
                student.uper();
                print("Pressed ${student.age.value}");
              },
              child: const Text("Upper"),
            ),
          ],
        ),
      ),
    );
  }
}
