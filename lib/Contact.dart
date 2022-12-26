import 'package:flutter/material.dart';
import 'Home.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBar(
            title: Text('CONTACT'),
            centerTitle: true,
            backgroundColor: Color(0xFF004080),
            leading: IconButton(
              icon: Icon(Icons.arrow_back,color: Colors.white,),
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context)=> Home()),
                );
              },
            ),
          ),
        ),
        body: Container(
        color: Color(0xFFC4C2C2),
      ),
      ),
    );
  }
}
