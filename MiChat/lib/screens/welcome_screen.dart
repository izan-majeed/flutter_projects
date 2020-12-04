import 'package:mi_chat/screens/login_screen.dart';
import 'package:mi_chat/screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:mi_chat/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8E3A2),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                child: Image.asset('images/logo.png'),
                height: 200.0,
              ),
            ),
            Center(
              child: TypewriterAnimatedTextKit(
                text: ['mi Chat'],
                textStyle: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            RoundedButton(color: Color(0xff542B0E),
            title: 'Log In',
            onPressed: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },),
            RoundedButton(
              color: Color(0xff7F4E2D),
              title: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}


