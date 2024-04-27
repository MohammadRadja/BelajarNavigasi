import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/playing_screen_controller.dart';

class PlayingScreenView extends GetView<PlayingScreenController> {
  const PlayingScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlayingScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
                "https://cdn.pixabay.com/photo/2018/05/01/07/25/play-button-3364880_960_720.png",
                width: 100,
                height: 100),
            const Text("Play Screen"),
            ElevatedButton(
                onPressed: () {
                  //navigasi ke playing screen cek file app_routes.dart untuk penamaan
                  Get.back();
                },
                child: const Text("Back")),
            ElevatedButton(
                onPressed: () {
                  // Direct ke Page Screen Pause
                  Get.toNamed("/pause-screen");
                },
                child: const Text("Pause"))
          ],
        ),
      ),
    );
  }
}
