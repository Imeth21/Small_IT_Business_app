import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:firebase_auth/firebase_auth.dart';



class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF003696),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/Source Code.png",height: 160.0,width: 160.0,alignment: Alignment.topCenter,),

            SizedBox(height: 60.0,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,  //keyboard type for email
                controller: email,    //email controller
                decoration: InputDecoration(
                  icon: Icon(Icons.email,color: Colors.white,),
                  hintText: 'E-mail',
                  hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400,),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white
                    ),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                ),
              ),
            ),

            SizedBox(height: 12.0,),       //separate

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: password,   //password controller
                decoration: InputDecoration(
                  icon: Icon(Icons.key,color: Colors.white,),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400,),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white
                      ),
                      borderRadius: BorderRadius.circular(14.0),
                    )
                ),
              ),
            ),

            SizedBox(height: 20.0,),

            MaterialButton(
              onPressed: () async {
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: email.text,
                  password: password.text,
              );

                setState(() {

                });

                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context)=> Home()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                    color: Colors.blue[800],
                  ),

                  child: Center(
                    child: Text('SIGN IN',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),
                    ),
                  ) ,
                ),
              ),
            ),

          ],

        ),
      ),
    );
  }
}
