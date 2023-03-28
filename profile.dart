import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Profile extends StatefulWidget {
  @override
 _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  Widget createProfile(){
    return CircleAvatar(
      radius: 60,
      backgroundColor: Colors.white,
      backgroundImage: const NetworkImage('https://imageio.forbes.com/specials-images/imageserve/614d55107441e2d9ba4238f6/The-7-Biggest-Artificial-Intelligence--AI--Trends-In-2022/960x0.jpg?format=jpg&width=960'),
      child: Align(
        alignment: Alignment.bottomRight,
        child: IconButton(
          onPressed: (){
            print('profilechange');
          },
          icon: const Icon
            (
              Icons.add
          ),
          color: Colors.white70,)
      ),
    );
  }

  Widget Username() {
    return TextFormField(
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: const InputDecoration(
          icon: Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
          labelText: 'Username',
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ))),
    );
  }

  Widget PhoneNumber() {
    return TextFormField(
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: const InputDecoration(
          icon: Icon(
            Icons.phone,
            color: Colors.white,
          ),
          labelText: 'Phone Number',
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ))),
    );
  }

  Widget Email() {
    return TextFormField(
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: const InputDecoration(
          icon: Icon(
            Icons.mail,
            color: Colors.white,
          ),
          labelText: 'Email',
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Done',
                style: TextStyle(
                  fontSize: 16,
                ),
              ))
        ],
        backgroundColor: Color(0xff131D44),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: Stack(children: <Widget>[
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
                    padding: EdgeInsets.all(40),
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          createProfile(),
                          const SizedBox(
                            height: 20,
                          ),
                          Username(),
                          const SizedBox(
                            height: 20,
                          ),
                          PhoneNumber(),
                          const SizedBox(
                            height: 20,
                          ),
                          Email(),


                        ])))
          ])),
      bottomNavigationBar: Container(
        color: const Color(0xff131D44),
        height: 100,
        child: const Center(
          child: Text(
            'Mining Robot', 
            style: TextStyle(
                
                color: Colors.white70),
          ),
        ),
      ),
    );
  }
}
