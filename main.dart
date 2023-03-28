import 'package:flutter/material.dart';
import 'package:miningrobot/about.dart';
import 'package:miningrobot/dashboard.dart';
import 'package:miningrobot/signup.dart';
import 'login.dart';

import 'package:firebase_core/firebase_core.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp( MyApp());
}


class MyApp extends StatelessWidget{
   MyApp({super.key});

   final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {

    return   MaterialApp(
      title: 'MiningRobot',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _initialization,
        builder: (context,snapshot){
          if (snapshot.hasError){
            print('Error');
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Login();
            
          }
          return CircularProgressIndicator();
        }

      ),
    );
    // TODO: implement build
  }


}

