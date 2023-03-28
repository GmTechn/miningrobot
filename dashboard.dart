import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:miningrobot/about.dart';
import 'package:miningrobot/profile.dart';
import 'package:miningrobot/services.dart';

import 'login.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  Widget buildButton(String myText) {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
          //color: Colors.white,
          border: Border.all(
            color: Colors.white,
            width: 0.2,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: Text(
          myText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff131D44),
        title: const Text('Dashboard'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              icon: const Icon(
                Icons.account_circle,
                color: Colors.white70,
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
             DrawerHeader(

              decoration: const BoxDecoration(
               color:Color(0xff131D44),
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 30,),
                    Text('Menu',
                  style: TextStyle(
                   fontSize: 30, fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  ),
                ]
                ),


            ),
             ListTile(

              title: const Text('Home'),
              onTap: (){
                Navigator.pop(context);
              },


            ),
            ListTile(
              title: const Text('About'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const About()));
              },


            ),
            ListTile(
              title: const Text('Services'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Services()));
              },


            ),
            ListTile(
              title: const Text('Contacts'),
              onTap: (){
                Navigator.pop(context);
              },


            ),
            ListTile(
              title: const Text('Settings'),
              onTap: (){
                Navigator.pop(context);
              },


            ),
            ListTile(
              title: const Text('Log Out'),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Login()));
              },


            ),
          ],
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xff131D44),
                    Color(0xff22357B),
                    Color(0xff131D44),
                  ])),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 100,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          buildButton('News'),
                          const SizedBox(
                            width: 10,
                          ),
                          buildButton('Ore deposits and minerals '),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          buildButton('Equipment maintenance'),
                          const SizedBox(
                            width: 10,
                          ),
                          buildButton('Educational resources'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          buildButton('Safety advice'),
                          const SizedBox(
                            width: 10,
                          ),
                          buildButton('Real-time data'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          buildButton('Streamline communication'),
                          const SizedBox(
                            width: 10,
                          ),
                          buildButton('FAQ'),
                        ],
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: const Color(0xff131D44),
        child: const Center(
          child: Text('Mining Robot',style: TextStyle(color: Colors.white70),),
        ),
      )

    );
  }
}
