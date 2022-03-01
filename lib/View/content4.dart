import 'package:flutter/material.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 36,
            ),
            const Center(
              heightFactor: 2,
              child: Text(
                'Authentication Example',
                style: TextStyle(fontSize: 24, color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
