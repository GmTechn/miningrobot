// ignore_for_file: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool terms= false;

  Widget NavButton(){
    return Container(
      alignment: Alignment.centerLeft,
      child: IconButton(
          onPressed: () {
            Navigator.pop(context);

          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )
      ),
    );

  }

  // Widget createProfile(){
  //   return const CircleAvatar(
  //     radius: 60,
  //     backgroundColor: Colors.white,
  //     backgroundImage: NetworkImage('https://imageio.forbes.com/specials-images/imageserve/614d55107441e2d9ba4238f6/The-7-Biggest-Artificial-Intelligence--AI--Trends-In-2022/960x0.jpg?format=jpg&width=960'),
  //     child: Align(
  //       alignment: Alignment.bottomRight,
  //       child: Icon(
  //         Icons.add,
  //         color: Colors.white,
  //       ),
  //     ),
  //   );
  // }

  Widget Username(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [

        const SizedBox(height: 10,),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0, 2)
              ),
            ],
          ),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(20),
              prefixIcon: Icon(
                Icons.account_circle,
                color:Color(0xff281018),
              ),
              hintText: 'Username',
              hintStyle: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),

        )
      ],

    );
  }

  Widget Email(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [

        const SizedBox(height: 10,),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0, 2)
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
              contentPadding: EdgeInsets.all(20),
              prefixIcon: Icon(
                Icons.email,
                color:Color(0xff281018),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),

        )
      ],

    );
  }

  Widget Password(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [

        const SizedBox(height: 10,),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0, 2)
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
              contentPadding: EdgeInsets.all(20),
              prefixIcon: Icon(
                Icons.lock,
                color:Color(0xff281018),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),

        )
      ],

    );
  }

  Widget ConfirmPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [

        const SizedBox(height: 10,),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0, 2)
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
              contentPadding: EdgeInsets.all(20),
              prefixIcon: Icon(
                Icons.lock,
                color:Color(0xff281018),
              ),
              hintText: 'Confirm Password',
              hintStyle: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),

        )
      ],

    );
  }

  Widget PhoneNumber (){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [

        const SizedBox(height: 10,),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0, 2)
              ),
            ],
          ),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(20),
              prefixIcon: Icon(
                Icons.phone,
                color:Color(0xff281018),
              ),
              hintText: 'Phone Number',
              hintStyle: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),

        )
      ],

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
            checkColor: Color(0xff743d4f),
            activeColor: Colors.white,
            onChanged: (value){
              setState(() {
                terms = value!;
              });
            },
          ),
        ),
        const Text('I accept all terms and conditions',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Widget SingUpButton(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      //width: double.infinity,
      child: TextButton(
        onPressed: () => print("Signup"),
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

        child: const Text('               Sign Up             ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

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
                  children:  <Widget>[
                    NavButton(),
                    const SizedBox(height: 20,),
                    //createProfile(),
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
                    const SizedBox(height: 5,),
                    TermsandCond(),
                    const SizedBox(height: 5,),
                    SingUpButton(),
                    const SizedBox(height: 70,),
                    const Text('Sign up with Social Media ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10,),
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


