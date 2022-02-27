import 'package:flutter/material.dart';

class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  final userInputted = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      //
      appBar: AppBar(),
      //
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: TextField(
                    controller: userInputted,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
