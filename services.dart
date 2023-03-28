import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Services extends StatefulWidget{

  _ServicesState createState () => _ServicesState();

}


class _ServicesState extends State<Services>{
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color(0xff131D44),
        title: const Text('Services',
          style: TextStyle(
            color: Colors.white,


          ),
        ),
      ),

      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,

        child: Stack(
            children: [

              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const  BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff131D44),
                          Color(0xff22357B),
                          Color(0xff131D44),
                        ]
                    )
                ),
                padding: const EdgeInsets.all(40),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(height: 50,),
                        Text('',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('Our Services include:',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("1. Comprehensive curriculum : Our comprehensive curriculum covers the"
                          " latest technologies and trends in the industry,"
                          " taught by experienced faculty.",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("2. State-of-the-art facilities and cutting-edge technology : "
                          "Students have access to state-of-the-art facilities and cutting-edge technology, "
                          "including computer labs and project spaces.",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 30,),

                      Text("3. Personalized attention and support : At GmTech Institute, "
                          "students receive personalized attention and support, "
                          "including career counseling and job placement assistance.",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 30,),

                      Text("4. Workshops and seminars : In addition, we offer "
                          "workshops and seminars on emerging technologies,"
                          " as well as opportunities to network with industry professionals.",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 20,),

                      Text("Our mission is to help each student reach their"
                          " full potential and succeed in the technology field.",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 30,),
                      Text('Visit our website for'
                          ' more information and to learn more about what we have to offer!',

                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text('http://gabriellemtech.com                                                        ',

                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),)

                    ],
                  ),
                ),

              ),
            ]
        ),
      ),

      bottomNavigationBar: Container(
        color: const Color(0xff131D44),
        height: 100,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Center(child: Text('Mining Robot'),)
        ),


      ),

    );
  }


}