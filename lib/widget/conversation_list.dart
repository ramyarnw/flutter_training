import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen/chat_detail_page_ram.dart';

class ConversationList extends StatefulWidget {
  bool isMessageRead = true;

   ConversationList({super.key, required this.name,required this.messageText, required this.imageURL, required this.time, required bool isMessageRead});
  //const ConversationList({super.key});
  String name;
  String messageText;
  String imageURL;
   String time;

  @override
  State<ConversationList> createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()
      {
Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
  return const ChatDetailPage();
}));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
        child: Row(
          children: [
            Expanded(child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.imageURL),
                  maxRadius: 30,
                ),
                const SizedBox(width: 15,),
                Expanded(child: Container(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name,style: TextStyle(fontSize: 20),),
                      SizedBox(height: 6,),
                      Text(widget.messageText,style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),)

              ],
            ),),
            Text(widget.time,style: TextStyle(fontSize: 15,fontWeight: widget.isMessageRead?FontWeight.bold:FontWeight.normal),),
          ],
        ),
      ),
    );
  }
}
