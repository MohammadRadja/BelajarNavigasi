import 'package:get/get.dart';

import '../modules/PauseScreen/bindings/pause_screen_binding.dart';
import '../modules/PauseScreen/views/pause_screen_view.dart';
import '../modules/PlayingScreen/bindings/playing_screen_binding.dart';
import '../modules/PlayingScreen/views/playing_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PLAYING_SCREEN,
      page: () => const PlayingScreenView(),
      binding: PlayingScreenBinding(),
    ),
    GetPage(
      name: _Paths.PAUSE_SCREEN,
      page: () => const PauseScreenView(),
      binding: PauseScreenBinding(),
    ),
  ];
}
