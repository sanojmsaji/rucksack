import 'package:flutter/material.dart';
import 'package:rucksack/screens/emailverify.dart';
import 'package:rucksack/screens/homescreen.dart';
import 'package:rucksack/screens/logSignScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rucksack/screens/profilescreen.dart';
import 'package:rucksack/screens/additem.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      initialRoute: LogSignScreen.id,

      routes: {
        AddItem.id : (context) => AddItem(),
        HomeScreen.id : (context) => HomeScreen(),
        LogSignScreen.id : (context) => LogSignScreen(),
        EmailVerify.id : (context) => EmailVerify(),
        Profile.id : (context) => Profile(),
      },
    );
  }
}
