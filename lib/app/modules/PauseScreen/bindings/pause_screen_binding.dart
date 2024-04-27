import 'package:get/get.dart';

import '../controllers/pause_screen_controller.dart';

class PauseScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PauseScreenController>(
      () => PauseScreenController(),
    );
  }
}
