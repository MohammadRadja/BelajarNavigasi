import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              "https://cdn.pixabay.com/photo/2018/04/30/13/18/music-app-icon-3362643_1280.png",
              width: 100,
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  //navigasi ke playing screen cek file app_routes.dart untuk penamaan
                  Get.toNamed("/playing-screen");
                },
                child: const Text("Play Screen"))
          ],
        ),
      ),
    );
  }
}
