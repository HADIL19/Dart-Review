import 'dart:io';
void main() {
  
  print(Platform.executable);
  print(Platform.numberOfProcessors);
  print(Platform.operatingSystem);
  print(Platform.operatingSystemVersion);
  print(Platform.version); //dart version
  print(Platform.script);
  print('-------------------------------------');
  print(Platform.isAndroid); // used a lot
  print(Platform.isFuchsia);
  print(Platform.isWindows);
  print(Platform.isLinux);
  print(Platform.isMacOS);
  print(Platform.isIOS); //used a lot 
  Platform.isIOS ? print('IOS') : print('NOT IOS');
  print(Platform.environment);
  print('-------------------------------------');
  Platform.environment.forEach((key, value) {
    print('$key : $value');
  });
  print(Platform.environment['PATH']);
  Platform.environment.forEach((key, _) {
    print('$key: ${Platform.environment[key]}');
  });
  print('enter your name');
  var name = stdin.readLineSync();
  print('your names is $name');
  print('enter your birth year');
  var birthYear = stdin.readLineSync();
  var age = DateTime.now().year - int.parse(birthYear!);
  print('your age is $age');
  var a1 = [1, 2.5, 3.2, 4, 5, 6];
   print(a1.any((element) => element % 2 == 0));
   a1.removeWhere((element) => element % 2 == 0);
  a1.retainWhere((element) => element % 2 == 0);
  print(a1);

  var b1 = a1.where((element) => element % 2 == 0);
  var b2 = a1.firstWhere((element) => element % 2 == 0, orElse: () => 0);
  var b3 = a1.lastWhere((element) => element % 2 == 0);
  var c1 = a1.indexWhere((element) => element % 2 == 0, 4);
  var c2 = a1.lastIndexWhere((element) => element % 2 == 0);
  var d = a1.whereType<double>();
  var e;
  try {
    e = a1.singleWhere((element) => element % 2 == 0);
  } catch (_) {
    e = 0;
  }

  print(b1);
  print(b2);
  print(b3);
  print(c1);
  print(c2);
  print(d);
  print(e);
  b1.forEach((element) {
    print(element);
  });
 // iterable:
  // object contains data that can be iterated
  //examples (String,List,Set,Map)
   List<int> l = [4, 5, 6, 7, 8, 9];
  Iterable<int> k = [4, 5, 6, 7, 8, 9];
  var j = l.toList();
  j.forEach((element) {
    print(element);
  });
  var li = [
    [2, 4, 6],
    [8, 9, 4]
  ];
  var s = {4, 5, 6, 7, 8, 9}; //set
  var m = {9: 'a', 8: 'b', 7: 'c'}; //map

  for (var item in l) {
    print(item);
  }
  /*...//spread operator*/
  var list0 = [0, 0, 0, 0, 0];
  var list1 = [
    0,
    if (list0.length == 0) ...list0,
    ...?l //null aware spread operator
  ];
  print(list1);
  List<List<int>> list4 = [
    [1, 2, 3]
  ]; // list of lists,maps,sets, of integers
  var sum = 0.0;
  List b = a1.map((e) {
    sum += e;
    return e;
  }).toList(); // result in  [] not ()
  print(b);
  print(sum);
  // map joz ela all elements
  print(int.parse('2') + 5);
  '2'.parseInt();
}

extension NumberParsing on String {
  parseInt() {
    return int.parse(this);
  }
  
  // Dart Packages
  // 1- pub.dev
  // 2- dart packages
  // 3- flutter packages
  //http dart pub add http
  // http flutter pub add http
  // pubspec.yaml dependencies: http: ^0.13.3
  // m1 -extension Pubspec Assist 
  //commande palette
  // search for Pubspec Assist 
  // add package name1, name2 .... 
  //add in file.dart import 'package:http/http.dart';
  // m2- without Pupspec Assist, with dart , commande palette 
  // dart: add Dependency 
  // select the library 
  // all is set for you <3

//Stirng? colorFavorite = null ; // either String or null it can be null or string
 
  //setBackgroundColor(colorFavorite);
}
String backgroundColor= "";
setBackgroundColorNullable(String? color){
   if (color == null) return ;
  backgroundColor = color! ;// this can't be null so accpet it 
  print(backgroundColor);
  //null nullability 
  //never nothing
  //always something
  // soundness null-safety : 
  // compile time run time 
  // null safety :

  /* required & late keywords*/
  var hadil = Person(age: 21, favoriteColor: "blue");
  print(hadil.age);
  print(hadil.favoriteColor);

  hadil.favoriteColor = "purple";

  setBackgroundColorNullable(hadil.favoriteColor!); // this cannot be null
}

class Person {
  int age;
  late int age2; // late keyword
  // late keyword : it will be initialized latern u promise it will be initialized later
  String? favoriteColor =
      null; // either String or null it can be null or string
  Person({required this.age, this.favoriteColor}) {
    // constructor opetoinal parameter
    // required this.age faut le remplir
    // par contre c'est pas la peine de faire required pour favoriteColor car il est declarer nullable

    age2 = 21;
    age2 = age2 - 2;
  }
}

setBackgroundColor(String color) {
  print(color);
}
