/*import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key,});


  @override
  Widget build(BuildContext context) {
    var list = [
      ChatThread(
          url: 'https://pixabay.com/images/search/mountain%20scenery/',
          name: 'surya',
          date: '11:30am'),
      ChatThread(
          url:
              'https://www.pexels.com/photo/close-photography-of-red-and-pink-rose-56866/',
          name: 'sri',
          date: '12:31pm'),
      ChatThread(url: '', name: 'siva', date: '12:32pm'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('WatsApp'),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            var chat = list[index];

            return ChatTile(
              thread: ChatThread(
                  thread: chat,
                  url: thread.url,
                  name: thread.name,
                  date: thread.date),
            );
          }),
    );
  }
}

class ChatTile extends StatelessWidget {
  const ChatTile({super.key, required this.thread});

  final ChatThread thread;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(thread.url),
      trailing: Text(
        thread.name,
        style: const TextStyle(color: Colors.green, fontSize: 15),
      ),
      title: Text(thread.date),
    );
  }
}

class ChatThread {
  ChatThread({required this.url, required this.name, required this.date});

  final String url;
  final String name;

  //final String lastMessage;
  final String date;
}
*/