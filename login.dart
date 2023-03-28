// ignore: file_names
// ignore_for_file: avoid_print, duplicate_ignore, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:miningrobot/dashboard.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();

}


class _LoginState extends State<Login> {

  bool isRememberMe = false;

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Email',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPass() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60,
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgetPass(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,

      children: <Widget>[
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white,),
          child: Checkbox(
            value: isRememberMe,
            checkColor: Colors.black,
            activeColor: Colors.white,
            onChanged: (value){
              setState(() {
                isRememberMe = value!;
              });
            },
          ),
        ),
        const Text('Remeber me',
          style:TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 100,),
        TextButton(
          // ignore: avoid_print
          onPressed: () => print('Forget Pass'),
          child: const Text('Forgot Password?',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,

            ),
          ),
        ),
      ],
    );


  }
  Widget buildLoginButton() {
    return Container(
      padding:  const EdgeInsets.symmetric(
        vertical: 25,
      ),
      width: double.infinity,

      child: ElevatedButton(

        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Dashboard()));},

        style: ButtonStyle(

          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(const Color(0xff22357B),),

          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(width: 1, color: Colors.white),

              )

          ),

        ),
        child: const Text(
          'Login',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),


      ),

    );
  }

  Widget buildSignUpButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have an account?  ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUp()));
          },
          child: const Text(
            'Create account!',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              // color: Color(0xff20124d),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
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
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 120,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'MiningRobot',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    buildEmail(),
                    const SizedBox(
                      height: 10,
                    ),
                    buildPass(),
                    const SizedBox(
                      height: 30,
                    ),
                    buildForgetPass(),
                    const SizedBox(
                      height: 50,
                    ),
                    buildLoginButton(),
                    const SizedBox(
                      height: 50,
                    ),
                    buildSignUpButton(),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
