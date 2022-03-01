import 'package:flutter/material.dart';

class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  final userInputted = TextEditingController();

  String title = "This how TextField works";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userInputted.text;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    TextEditingController.fromValue(userInputted.value);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 36,
              ),
              Text(title),
              Container(
                  width: 300, height: 300, child: Text(userInputted.text)),
              Container(
                child: Text(
                  'This is example of User Input Text',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  controller: userInputted,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      userInputted.text;
                    });
                  },
                  child: Text('Click to display inputted Text'))
            ],
          ),
        ),
      ),
    );
  }
}
