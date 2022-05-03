import 'package:flutter/material.dart';

class ChatsBubble extends StatelessWidget {
  const ChatsBubble({
    Key? key,
    required this.text,
    required this.isCurrentUser,
  }) : super(key: key);
  final String text;
  final bool isCurrentUser;


  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.fromLTRB(isCurrentUser ? 64.0 : 16.0, 4, isCurrentUser ? 16.0 : 64.0, 4),
      child: Align(
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isCurrentUser ? Colors.blue : Colors.blueAccent, borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(padding: const EdgeInsets.all(12),
            child: Text('Hi Chi, Are you done with the internship?',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: isCurrentUser ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}


class ChatApp extends StatefulWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState  extends State<ChatApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(),
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
      body:  ChatsBubble(text: 'Hi Chi, Are you done with the internship?', isCurrentUser: true,
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

