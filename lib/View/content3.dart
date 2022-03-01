import 'package:flutter/material.dart';
import 'content4.dart';

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
    userInputted.text;
    super.initState();
  }

  @override
  void dispose() {
    TextEditingController.fromValue(userInputted.value);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 36,
              ),

              //Title can be change through the declaration above
              Text(title),

              //User can return value from TextField goes here.
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 300,
                child: Text(userInputted.text),
              ),

              //Helper to make user Understand that the function below are editable.
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: const Text(
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
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      userInputted.text;
                    });
                  },
                  child: const Text('Click to display inputted Text'),
                ),
              ),
              SizedBox(
                height: 30,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => AuthenticationPage()));
                    },
                    child: Text('Go to Next Page')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
