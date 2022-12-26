import 'package:flutter/material.dart';
import 'Home.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 100), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text("Hello")),
      ),
    );
  }
}
