import 'package:flutter/material.dart';

class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  // @override
  // void initState() {
  //   super.initState();
  //   setState(() {
  //     // TextEditingController.fromValue(userInputted.value);
  //   });
  // }

  // @override
  // void dispose() {
  //   // TextEditingController.fromValue(userInputted.value);
  //   super.dispose();
  // }
  final userInputted = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(),
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
                // ElevatedButton(onPressed: () {}, child: Icon(Icons.send))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
