import 'package:flutter/material.dart';
import 'package:zenzzed/Home/Controller/chat_controller.dart';
import 'package:zenzzed/Home/View/chats/qoutes/qoutesmodalsheet1.dart';
import 'package:zenzzed/Home/View/chats/workstatus.dart';

class Chat extends StatefulWidget {
  const Chat({
    super.key,
  });

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(context) {
    bool showQoutes = true;
    List<Map<String, dynamic>> messages = [];
    for (var chat in allChat) {
      for (var message in chat['chat']!) {
        messages.add({
          'direction':
              chat['direction'] ?? 'right', // Default to right if no direction
          'message': message,
        });
      }
    }
    void showQoutes1() {
      showModalBottomSheet(
        context: context,
        builder: (cxt) => const Qoutes1(),
        shape: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0))),
      );
    }

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          leadingWidth: 100.0,
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnoPN8K0ROp9fSFAthzNm1c77VKBe5T22jtg&s',
            ),

            radius: 20.0, // Set the desired radius
          ),
          title: Column(
            children: [
              Text(
                'James Smith',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                'Computer Repair',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  showQoutes == true
                      ? showQoutes1()
                      : Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => const WorkStatus()));
                  setState(() {
                    showQoutes = false;
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.0,
                            color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        showQoutes == true ? 'Final Qoute' : 'Work Status',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ))),
          ]),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              var message = messages[index];
              var direction = message['direction'];
              var chatMessage = message['message'];

              // Convert the chat message map to a list of text widgets
              List<Widget> messageWidgets =
                  chatMessage.entries.map<Widget>((entry) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 2.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: direction != 'left'
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSecondaryContainer),
                  child: Text('${entry.value}'),
                );
              }).toList();

              return Container(
                width: 150,
                alignment: direction == 'left'
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                margin:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: direction == 'left'
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: messageWidgets,
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(
                  left: 15, bottom: 10, top: 10, right: 15.0),
              height: 60,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.add,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type something....",
                          hintStyle: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0))),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
