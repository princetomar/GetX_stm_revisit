import 'package:flutter/material.dart';
import 'package:flutter_getx_tut/controllers/album_controller.dart';
import 'package:flutter_getx_tut/controllers/counter_controller.dart';
import 'package:flutter_getx_tut/views/pages/album_page.dart';
import 'package:flutter_getx_tut/views/pages/home.dart';
import 'package:get/instance_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //
    Get.put(CounterController());
    Get.put(AlbumController());

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: AlbumPage(),
    );
  }
}
