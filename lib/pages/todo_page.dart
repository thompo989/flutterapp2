// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // this gives us access to whatever the user has typed in the text field
  TextEditingController myController = TextEditingController();

  // greet user method
  void greetUser() {
    print(myController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: myController,
            ),
            ElevatedButton(
              onPressed: greetUser,
              child: Text("tap"),
            ),
          ],
        ),
      ),
    );
  }
}
