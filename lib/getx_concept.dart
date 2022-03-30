
/*If we want that every time the value of variable changes
then all the widgets which uses the variable must update itself then
the variable must be reactive or observable and to make it
Reactive (Rx) .obs is used with variable value.
To update the widget which uses Rx variable must be placed inside
Obx(() => Your widget which uses Rx)
The widget will only update if and only if the Rx variable value changes.
*/



///    1- The first is using Rx{Type}

//  Initial value is recommended , but  not mandatory

//  final name     =  RxString('');
//  final isLogged =  RxBool(false);
//  final count    =  RxInt(0);
//  final balance  =  RxDouble(0.0);
//  final items    =  RxList<String>([]);
//   final myMap   =  RxMap<String, int>({});








///  2- Use Darts Generics, Rx<Type>

//  final name     =  Rx<String>('');
//  final isLogged =  Rx<Bool>(false);
//  final count    =  Rx<Int>(0);
//  final balance  =  Rx<Double>(0.0);
//  final number   =  Rx<Num>(0);
//  final items    =  Rx<List<String>>([]);
//  final myMap    =  Rx<Map<String,int>>({});
//  final user     =  Rx<User>();











