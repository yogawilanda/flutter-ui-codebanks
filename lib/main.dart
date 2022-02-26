import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'View/login1.dart';

Future<void> main() async {
  List<CameraDescription> cameras;

  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}
