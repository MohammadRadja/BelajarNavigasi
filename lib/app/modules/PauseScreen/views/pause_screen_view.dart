import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pause_screen_controller.dart';

class PauseScreenView extends GetView<PauseScreenController> {
  const PauseScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PauseScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
                "https://cdn.pixabay.com/photo/2018/05/01/07/20/music-pause-icon-3364870_960_720.png",
                width: 100,
                height: 100),
            const Text("Pause Screen"),
            ElevatedButton(
                onPressed: () {
                  //navigasi ke playing screen cek file app_routes.dart untuk penamaan
                  Get.back();
                },
                child: const Text("Back")),
          ],
        ),
      ),
    );
  }
}
