import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:testing1/about.dart';
import 'package:testing1/chat.dart';
import 'package:testing1/login.dart';
import 'main.dart';
import 'Splash.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(280),        //giving appbar height
        child: AppBar(
          actions: [
            TextButton(
              onPressed:  () {
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context)=> login()),
              );
            },
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text('SIGN UP',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15,backgroundColor: Colors.black12),),
                ),
            )
          ],
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

      drawer: new Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('SourceCode',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w700),),
                accountEmail: Text('www.sourcecode.com'),
                currentAccountPicture:  Container(
                  height: 100,
                  width: 300,
                  child: Image.asset('images/Source Code.png'),
                )
            ),

           ListTile(
             leading: Icon(Icons.home),
             title: Text('HOME'),
             onTap: () {
               Navigator.of(context).push(MaterialPageRoute(
                   builder: (context) => const Home(),
               ));
             },
           ),

            ListTile(
              leading: Icon(Icons.chat),
              title: Text('CHAT'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>  Chat(),
                ));
              },
            ),

            ListTile(
              leading: Icon(Icons.people_outlined),
              title: Text('ABOUT US'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const About(),
                ));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('images/web development.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('images/cloud_services.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('images/Mobile application development.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('images/software development consulting.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('images/UIUX.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 450.0,
              autoPlay: true,
              enlargeCenterPage: true,
              reverse: true,
              scrollDirection: Axis.horizontal,
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
