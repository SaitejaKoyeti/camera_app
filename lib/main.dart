import 'package:camera_app/TakePicture.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();

  final firstCamera = cameras.first;

  runApp(MaterialApp(
    theme: ThemeData.light(),
    home: TakePictureScreen(
      camera: firstCamera,
    ),
  ));
}