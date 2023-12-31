import 'package:Azume_app/Screens/chat/chats.dart';
import 'package:Azume_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Azume_app/Screens/Forums/forum.dart';
import 'package:Azume_app/Screens/Welcome/welcome_screen.dart';
import 'package:Azume_app/Screens/Home Page/components/home_screen.dart';

Widget question(BuildContext context, String question) {
  return Card(
    color: kPrimaryLightColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    elevation: 5.0,
    shadowColor: kPrimaryColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ForumDetailPage(),
                ),
              );
            },
            child: Text(
              '$question',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ),
        ),
        Divider(
          thickness: 1.5,
          color: kPrimaryColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: TextButton(
                onPressed: () {},
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Upvote',
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.question_answer,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Answer',
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => ForumDetailPage(),
                  ),
                );
              },
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.remove_red_eye,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'View',
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class ForumQuestion extends StatelessWidget {
  get kPimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        elevation: 10,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Colors.white,
            size: 28,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ),
            );
          },
        ),
        // centerTitle: true,
        title: Center(
          child: Image(
            image: AssetImage('assets/images/azume_horizontal_logo.png'),
            height: 40,
            // alignment: Alignment.centerRight,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              icon: Icon(Icons.message_rounded),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Chats();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              question(
                context,
                'How do I become a expert in programming as well as design ??',
              ),
              question(
                context,
                'What are the risks in investing in Startups??',
              ),
              question(
                context,
                'How to start a sucessful Startup??',
              ),
              question(
                context,
                'How should you manage the failures of your team members in a Startup??',
              ),
              question(
                context,
                'How can you improve co-ordination between your team  ??',
              ),
              question(
                context,
                'How to overcome the challenges and difficulties faced by new Startups??',
              ),
              SizedBox(
                height: 5.0,
              ),
              Card(
                elevation: 7.0,
                color: Color(0xFF512DA8),
                shadowColor: kPimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 5.0),
                  child: TextButton(
                    onPressed: () {},
                    // color: Color(0xFF512DA8),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(15.0),
                    // ),
                    child: Text(
                      '+ Add Question',
                      style: TextStyle(
                        color: Color(0xFFF1E6FF),
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
