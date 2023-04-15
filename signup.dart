// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gotrue/gotrue.dart';
import 'package:gotrue/src/types/auth_response.dart';
import 'package:miningrobot/dashboard.dart';
import 'package:miningrobot/login.dart';
import 'package:miningrobot/snackbar.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:gotrue/gotrue.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {

  bool terms= false;

  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _confirmPasswordController =TextEditingController();

  @override
  void showSnackbar(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


  Future<void> signUp() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String phoneNumber = _phoneNumberController.text;


    // Validate email, password, phone number and confirm password
    // ...

    try {
      // Sign up the user
      final response = await supabase.auth.signUp(email: email, password: password);


      // Send email verification
      // await supabase.auth.sendEmailVerification();


      // Get the current authenticated user
     final currentUser = supabase.auth.currentUser;

      // Access the user's details
      if (currentUser != null) {
        print('User ID: ${currentUser.id}');
        print('User email: ${currentUser.email}');
        // print('User phone number: ${currentUser.phoneNumber}');
      } else {
        print('No user is currently authenticated');
      }

      // Store user data in Supabase
      final userData = {
        'email': email,
        'phone_number': phoneNumber,
      };

      final insertedData = await supabase.from('SignupTable').insert(userData).execute();

      // Navigate to the home screen
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Dashboard()),
      );
    } catch (e) {
      // Show error message to the user
      showSnackbar(e.toString());
    }
  }



  Widget createProfile(){
    return const CircleAvatar(
      radius: 60,
      backgroundColor: Colors.white,
      backgroundImage: NetworkImage('https://imageio.forbes.com/specials-images/imageserve/614d55107441e2d9ba4238f6/The-7-Biggest-Artificial-Intelligence--AI--Trends-In-2022/960x0.jpg?format=jpg&width=960'),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget Username(){

    return TextField(
      controller: _usernameController,
      decoration: InputDecoration(
        hintText: 'Username',
      ),
    );
  }

  Widget Email(){
    return TextField(
      controller: _emailController,
      decoration: const InputDecoration(
        hintText: 'Email',
      ),
    );
  }

  Widget Password(){
    return TextField(
      controller: _passwordController,
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Password',
      ),
    );
  }

  Widget ConfirmPassword(){
    return TextField(
      controller: _confirmPasswordController,
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Confirm Password',
      ),
    );
  }

  Widget PhoneNumber (){
    return TextField(
      controller: _phoneNumberController,
      decoration: const InputDecoration(
        hintText: 'Phone Number',
      ),
    );
  }

  Widget Accept(){

    return RichText(text: const TextSpan(
        children: [
          TextSpan(text: 'I agree to all the '
          ),
          TextSpan(text:'terms',style:
          TextStyle(
            decoration: TextDecoration.underline,
          )
          ),
          TextSpan(text:' and '),

          TextSpan(text: 'conditions.',
              style: TextStyle(
                  decoration: TextDecoration.underline
              ))
        ]
    )
    );
  }
  Widget TermsandCond(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Theme(
          data: ThemeData(
            unselectedWidgetColor: Colors.white,
          ),
          child: Checkbox(
            value: terms,
            checkColor: Colors.black,
            activeColor: Colors.white,
            onChanged: (value){
              setState(() {
                terms = value!;
              });
            },
          ),
        ),

        Accept(),

      ],
    );
  }

  Widget SingUpButton(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      //width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: signUp,
            // signup,
            style: ButtonStyle(

                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Color(0xff22357B),),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(width: 1, color: Colors.white),
                    )
                )

            ),

            child: const Text('       Sign Up        ',

            ),

          ),
          SizedBox(width: 110,),
          TextButton(
            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Login())
            )
              },
            style: ButtonStyle(

                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Color(0xff22357B),),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(width: 1, color: Colors.white),
                    )
                )

            ),

            child: const Text('   back to Login   ',

            ),

          ),
       ],
      ),
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
              padding: EdgeInsets.all(5),
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
                        Color(0xff22357B),
                        Color(0xff131D44),


                      ]
                  )
              ),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 100,

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  <Widget>[

                    const SizedBox(height: 20,),
                    createProfile(),
                    const SizedBox(height: 5,),
                    Username(),
                    const SizedBox(height: 5,),
                    Email(),
                    const SizedBox(height: 5,),
                    Password(),
                    const SizedBox(height: 5,),
                    ConfirmPassword(),
                    const SizedBox(height: 5,),
                    PhoneNumber(),
                    const SizedBox(height:40,),
                    TermsandCond(),
                    const SizedBox(height: 30,),
                    SingUpButton(),
                    const SizedBox(height: 30,),
                    const Text('Sign up with Social Media ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[


                        MaterialButton(
                          onPressed: () {print('Facebook');},
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWK7K-xd7NCpX6wOdYXoK9I9flDrT1zJzB2mt6L7ydm4z1O-Sn&s'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),


                          ),
                        ),
                        const SizedBox(width: 50,),
                        MaterialButton(
                          onPressed: () {print('Google');},
                          child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxit9yqLkYh5GFCw8vR-z4bviif-tZl1E7ovtzIEpfDnw9jRY&s'),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                              )
                          ),
                        ),
                        const SizedBox(width: 50,),
                        MaterialButton(
                          onPressed: () {print('LinkedIn');},
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxHLR-sF8zh3q-XdX9x_zm3OzQfAllwvyybuLV8e8jydgijGI&s'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),



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
