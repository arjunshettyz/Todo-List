import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo/pages/home_page.dart';

void main () async {
  WidgetsFlutterBinding.ensureInitialized(); 

  //init the hive 
  await Hive.initFlutter();

  //open a box
  // ignore: unused_local_variable
  var box =  await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple
      ),
    );
  }
}