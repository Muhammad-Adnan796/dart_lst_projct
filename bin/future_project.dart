
// practice of  try, catch, finally





// class fetchuserProfile {
// void divide(int val1, int val2) {
//   try {
//     print(val1 ~/ val2 );
//     print("All is Well");
//   } catch (e) {
//     // print("No Problem");
//     throw Exception("Some Thing Wrong");
//   } finally{
//     print("finally!");
//   }
// }

// print("Hello World") ;

// }




// practice of Future async and await




// Future<Map<String, String>> fetchUserName() {
//   return Future.delayed(const Duration(seconds: 2), () => {"name": "Adnan"});
// }
//
// Future<String> fetchOtherData() {
//   return Future.delayed(const Duration(seconds: 2), () => "This is From Another Api.");
// }
//
//
// void main() async {
//   print("Fetching User Profile");

// fetchUserName()
//     .then((value) => print("The Name of User is ${value["name"]}"))
//     .catchError((error) => print("Something Went Wrong, ${error.toString()}"))
//     .whenComplete(() => fetchOtherData()
//     .then((value) => print(value))
//     .catchError((error) => print(error.toString()))
//     .whenComplete(() => print("Both Future Function is now Complete.")));

// OR

// try {
//   final value1 = await fetchUserName();
//   print("The NAme Of User is ${value1["name"]}");
//
//   final value2 = await fetchOtherData();
//   print(value2);
// }catch (e){
//   print(e);
// }finally {
//   print("Both Future Function is now Complete.");
// }

// final arithmatic = Arithmatic();
// arithmatic.divide(15, 0);
// arithmatic.divide(15, 5);

// final arithmatic = Arithmatic();
// arithmatic.divide(15, 5);
// arithmatic.divide(15, 0);
//
// arithmatic.divide(15, 0);
// arithmatic.divide(15, 5);

// print("Fetch User Profile");
// fetchuserProfile()
//     .then((value) => print("Profile Fetched"))
//     .catchError((error) => print(error))
//     .whenComplete(() => print("end"));
// }

// import 'dart:io';
// import 'dart:math';
//
// Future<int> getRandom() {
//   return Future.delayed(Duration(seconds: 2), () => Random().nextInt(20));
// }
//
// void main() async {
//   try {
//     print("Download Starting.....");
//
//     int totalsum = 0;
//     stdout.write("[");
//     while (totalsum < 100) {
//       int value = await getRandom();
//       stdout.write("*" * value);
//       totalsum += value;
//     }
//     print("]");
//     print("Downloading Completed .....");
//   } catch (e) {
//     print(e);
//   } finally {
//     print("Exercise Ended");
//   }
// }




// Practice of Stream






// void main() async {
//   final stream = Stream.fromIterable([5,4,3,2,1]);

  // print( await streame.toList());
  // streame.listen((event) {
  //   print(event);
  // });

//   final sum1 = await sumStream(stream);
//   print("Total Sum is $sum1");
// }
//
// Future<int> sumStream(Stream<int> stream) async {
//   int sum = 0;
//
//   await for(int value in stream){
//   await Future.delayed(Duration (seconds: 2));
//      sum += value;
//      print(value);
//   }
//   return sum ;
// }



// Genrator With async and sync




// Iterable<int> generatfunction(int value) sync* {
//   for(int i= value ; i > 0 ; i--){
//   yield i;
//
//   }
// }
//
// void main() {
//   final value1 = generatfunction(5);
//   print(value1.toList());
// }



Stream<int> generatfunction(int value) async* {
  for(int i= value ; i > 0 ; i--){
   await Future.delayed(Duration (seconds: 1));
   print("Stream Value $i");
    yield i;

  }
}

Future<int> sumStreamValues(Stream <int> stream) async {

  int sum = 0 ;

  await for (int value in stream){
   await Future.delayed(Duration (seconds: 1));
   print("Recieve Values $value");
   sum += value;
  }
  return sum;
}

void main() async {
  final value1 = generatfunction(5);
  final value2 =  await sumStreamValues(value1);
  print("Total Sum $value2");
  // print(await value1.toList());
}