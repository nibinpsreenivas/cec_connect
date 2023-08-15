import 'package:chat_bot/chatscreen.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DialogFlowtter _dialogFlowtter;

  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    DialogFlowtter.fromFile().then((instance) => _dialogFlowtter = instance);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        elevation: 0.0,
        toolbarHeight: 75,
        title: Text("CEC BOT"),
      ),
      body: Column(
        children: [
          Expanded(
            child: chatscreen(messages: messages),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow[100],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 8,
              ),
              child: Row(children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: const TextStyle(color: Colors.yellow),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    sendMessage(_controller.text);
                    _controller.clear();
                  },
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }

  sendMessage(String text) async {
    if (text.isNotEmpty) {
      setState(() {
        addMessage(Message(text: DialogText(text: [text])), true);
      });

      DetectIntentResponse response = await _dialogFlowtter.detectIntent(
          queryInput: QueryInput(text: TextInput(text: text)));

      if (response.message == null) return;
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  void addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({
      'message': message,
      'isUserMessage': isUserMessage,
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _dialogFlowtter.dispose();
    super.dispose();
  }
}
