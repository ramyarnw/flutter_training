import 'package:flutter/material.dart';

import '../model/chat_user_model.dart';
import '../widget/conversation_list.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUser = <ChatUsers>[
    ChatUsers(
        name: 'ram',
        messageText: 'hi',
        imageURL: 'https://i.pinimg.com/enabled_hi/564x/41/6b/b9/416bb98174ce179bd9a0a5a2af9577de.jpg',
        time: '10:26am'),
    ChatUsers(
        name: 'siva',
        messageText: 'good morning',
        imageURL: 'https://i.pinimg.com/564x/68/8d/d3/688dd325dbbdc238f4b70caffe77a5af.jpg',
        time: '10:26am'),
    ChatUsers(
        name: 'lakshmi',
        messageText: 'how are you',
        imageURL: 'https://i.pinimg.com/enabled_hi/564x/20/de/0f/20de0f163ce2d700023882b19e4aa985.jpg',
        time: '10:15am'),
    ChatUsers(
        name: 'prakash',
        messageText: 'send me the link',
        imageURL: 'https://i.pinimg.com/enabled_hi/564x/12/ed/d1/12edd111fa74470c7bdde7a493deef37.jpg',
        time: '09:50am'),
    ChatUsers(
        name: 'ravi',
        messageText: 'is she okay',
        imageURL: 'https://i.pinimg.com/enabled_hi/564x/c2/1a/69/c21a69dac59a279bda39d90603ded807.jpg',
        time: '08:30am')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Chat List',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 20),
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink[50],
                      ),
                      child: const Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 15,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Add',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search here',
                    hintStyle: const TextStyle(color: Colors.blue),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                    filled: true,
                    fillColor: Colors.grey,
                    contentPadding: const EdgeInsets.all(7),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.greenAccent,
                        ))),
              ),
            ),
            ListView.builder(
                itemCount: chatUser.length,
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 15),
                //physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {

                  return ConversationList(name: chatUser[index].name,
                      messageText: chatUser[index].messageText,
                      imageURL: chatUser[index].imageURL,
                      time: chatUser[index].time,
                    isMessageRead : (index==0 || index==3)?true:false,
                  );


                }

            )
          ],
        ),
      ),
    );
  }
}
