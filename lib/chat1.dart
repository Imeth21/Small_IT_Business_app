import 'package:flutter/material.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';

class LiveChat extends StatefulWidget {
  const LiveChat({Key? key}) : super(key: key);

  @override
  State<LiveChat> createState() => _LiveChatState();
}

class _LiveChatState extends State<LiveChat> {
  final String title = "Online Agent";
  final String selectedURL = "";

  final Completer<WebViewController> _controller = Completer<WebViewController>();

  int position = 1;

  final key = UniqueKey();

  doneLoading(String A){
    setState(() {
      position = 0;
    });
  }

  startLoading(String A){
    setState(() {
      position = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Chat',
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          title: new Text(
            'Live Chat',
            style: TextStyle(
              color: Colors.blue,fontSize: 20,
            ),
          ),

          actions: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: InkWell(
                splashColor: Colors.blue,
                highlightColor: Colors.blue.withOpacity(0.5),
                onTap: () {
                  print("Back");
                  Navigator.pop(context,true);
                },
                child: Icon(Icons.arrow_back,color: Colors.red,size: 30.0,),
              ),
            ),
          ],
        ),

        body: IndexedStack(index: position, children:[
          WebView(
            initialUrl: 'https://tawk.to/chat/6302834b37898912e9644ef6/1gb0t1o7f',
            javascriptMode: JavascriptMode.unrestricted,
            key: key,
            onPageFinished: doneLoading,
            onPageStarted: startLoading,
          ),

          Container(
            color: Colors.white,
            child: Center(child: CircularProgressIndicator()),
          ),
        ],
        ),
      ),
    );
  }
}