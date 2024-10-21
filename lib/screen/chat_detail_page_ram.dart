import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        flexibleSpace: SafeArea(child: Container(
          padding: EdgeInsets.only(right: 15),
          child: Row(
            children: [
              IconButton(onPressed:()
                  {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_outlined,color: Colors.red,)),
              SizedBox(width: 2,),
              CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/enabled_hi/564x/41/6b/b9/416bb98174ce179bd9a0a5a2af9577de.jpg'),
                maxRadius: 30,
              ),
              SizedBox(width: 15,),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ram',style: TextStyle(fontSize: 20),),
                  SizedBox(height: 5,),
                  Text('hi',style: TextStyle(fontSize: 20),),
                  Text('Online',style: TextStyle(fontSize: 15,color: Colors.blue),),

                ],
              )),
              Icon(Icons.settings,color: Colors.black,)
            ],
          ),
        )),
        //title:  const Text('Chat Details'),
      ),
      body: Container(),
    );
  }
}
