import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:codebanks/main.dart';

class OpenCamera extends StatefulWidget {
  const OpenCamera({Key? key}) : super(key: key);

  @override
  _OpenCameraState createState() => _OpenCameraState();
}

class _OpenCameraState extends State<OpenCamera> {
  late List<CameraDescription> cameras;
  late CameraController cameraCtrls;
  @override

  //TODO: create controller for camera on desktop
  void openNativeCamera() {
    super.initState();
    cameraCtrls = CameraController(cameras[0], ResolutionPreset.max);
    cameraCtrls.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    cameraCtrls.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text('Open Camera'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              openNativeCamera();
            },
            child: Text('Open Camera')),
      ),
    );
  }
}
