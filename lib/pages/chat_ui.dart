import 'package:cleanly_cleaner/colors.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final ScrollController _scrollController = ScrollController();

  final List<String> _messages = [
    'I am great too!',
  ];

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Chat UI',
          style: TextStyle(color: white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: cleanlyColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                  subtitle: const Text('12:00 PM'),
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('images/user.jpg'),
                  ),
                  trailing: const Text('1m ago'),
                );
              },
            ),
          ),
          Divider(
            height: 1.0,
            color: Colors.grey.shade300,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 75.0,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      hintText: 'Type your message here...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    setState(() {
                      if (_textController.text.isNotEmpty) {
                        _messages.add(_textController.text);
                        _textController.clear();
                        _scrollController.animateTo(
                          _scrollController.position.maxScrollExtent,
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                        );
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
