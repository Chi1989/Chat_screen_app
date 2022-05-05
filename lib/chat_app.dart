import 'package:flutter/material.dart';
import 'package:second_task/body.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key,

  }) : super(key: key,);

  @override


Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/elonmusk.jpeg'),
          ),
        ),
        title: Text('by Boldare',
        style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Image.asset('assets/images/call.jpeg'),),
          IconButton(onPressed: (){}, icon: Image.asset('assets/images/videocall.jpeg'),),
          IconButton(onPressed: (){}, icon: Image.asset('assets/images/info.jpeg'),),
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
          ChatBubble(text: 'How is work today?', isCurrentUser: false),
      ChatBubble(text: 'The work went well at the office', isCurrentUser: true),
      ChatBubble(text: 'I am craving corn and pear', isCurrentUser: false),
      ChatBubble(text: 'Xup Chi, Are you done with the internship?', isCurrentUser: true),
      ChatBubble(text: 'Few months time', isCurrentUser: false),
            ],
          ),
      ),
      bottomSheet: SizedBox(
        height: 100,
        child: SafeArea(
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Image.asset('assets/images/add.jpeg'),),
              IconButton(onPressed: (){}, icon: Image.asset('assets/images/camera.jpeg'),),
              IconButton(onPressed: (){}, icon: Image.asset('assets/images/picture.jpeg'),),
              IconButton(onPressed: (){}, icon: Image.asset('assets/images/microphone.jpeg'),),
              Expanded(child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xFFE4E6EB),
                      filled: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                         child: Image.asset('assets/images/emoji.jpeg'),

                  ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 0, style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(25),
                      )
                    )
                ),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}



