import 'package:flutter/material.dart';
import 'Home.dart';
import 'chat1.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(280),        //giving appbar height
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/Source Code.png"),
                  fit: BoxFit.fill
              ),
            ),
          ),
        ),
      ),

      body: Center(
        child: Text(
          "SourceCode live chat ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'BreeSerif',
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => LiveChat()),
          );
        }),
        backgroundColor: Colors.teal[800],
        child: Icon(Icons.chat_rounded),
      ),
      backgroundColor: Colors.blue[600],
    );
  }
}
