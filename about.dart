import 'package:flutter/services.dart';
import 'package:flutter/material.dart';



class About extends StatefulWidget{
  const About({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AboutState createState() => _AboutState();


}

class _AboutState extends State<About>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff131D44),
        title: const Text('About Us',
          style: TextStyle(
            color: Colors.white,

          ),
        ),
      ),

      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,

        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(40),
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
                child: Column(

                  children: const [
                    
                    Text('Welcome to Mining Robot, the app designed specifically to help miners improve their productivity and stay safe while working in challenging mining environments.                '
                        '                                                   '
                        'With Mining Robot, miners can easily count the number of bags of minerals they have collected, receive guidance on how to find ore deposits, and get advice on how to equip themselves well for the job.'
                        '                                                                           '
                        '                       '
                      'Our team of expert developers has designed Mining Robot to be user-friendly and intuitive. With a simple and easy-to-use interface, miners can quickly access all the features they need to make their work more efficient and effective. '
                        '                                                     '
                        '                                                     '
                        'The app also provides helpful tips and tricks to help miners optimize their work and stay safe while they work.'
                      'One of the most important features of Mining Robot is its ability to count the number of bags of minerals that miners have collected. '
                        '                                               '
                        '                                               '
                        'This feature allows miners to keep track of their progress and ensure that they are meeting their targets for the day. The app also provides helpful guidance on how to find ore deposits, making it easier for miners to identify the best areas to work and optimize their time'
                        'In addition to these features, Mining Robot also provides advice on how to equip oneself well for the job. This includes information on the best gear to wear, such as helmets, boots, and gloves, as well as guidance on how to maintain and care for equipment to ensure it remains in good condition.'
                        'Importantly, Mining Robot also warns miners in case of danger. The app is equipped with sensors that can detect potentially hazardous conditions, such as gas leaks or cave-ins, and alert miners to the danger. This feature is critical in ensuring that miners stay safe while working in difficult and potentially dangerous conditions.'
                      'At Mining Robot, we are committed to providing the best possible tools and resources to help miners work more efficiently and safely. Our app is constantly evolving, with new features and updates added regularly to ensure that miners always have access to the latest and most effective tools. Try Mining Robot today and take your mining productivity and safety to the next level.'

                      ,style: TextStyle(color: Colors.white70),)
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xff131D44),
        height: 100,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
         child: const Center(child: Text('Mining Robot',style: TextStyle(color: Colors.white70),)),
        ),


      ),



    );
  }






}


