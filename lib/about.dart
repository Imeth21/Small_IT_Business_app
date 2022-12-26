import 'package:flutter/material.dart';
import 'Home.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBar(
            title: Text('ABOUT US'),
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
        body:  Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Our Vision \n \n \n Source Code is a software development company who are providing application development, implementation, management, and consulting services in one place. Our vision is to be a leading software development company in IT sector and provide better solutions for our customers. We want to introduce ourselves as reliable, user friendly, and innovative software development company in IT industry.',
                      style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BreeSerif',
                  ),
                ),
              ),
      ),
          ],
        ),
        backgroundColor: Colors.blue[100],
      ),
    );
  }
}
