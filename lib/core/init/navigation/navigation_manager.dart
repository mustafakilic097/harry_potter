import 'package:get/get.dart';
import 'package:harry_potter/view/HomePage/character_detail_screen.dart';
import 'package:harry_potter/view/HomePage/widgets/network_error.dart';

import '../../../view/HomePage/home_screen.dart';

class NavigationManager {
  static final NavigationManager _instance = NavigationManager._init();
  static NavigationManager get instance => _instance;
  NavigationManager._init();

  static String get getHomeRoute => "/";
  static String get getCharacterDetailRoute => "/characterDetail";
  static String get getNetworkErrorRoute => "/networkError";

  static List<GetPage> get routes => [
    GetPage(
      name: getHomeRoute,
      page: () => const HomeScreen(),
      transition: Transition.size,
      transitionDuration: const Duration(milliseconds: 200),
    ),
    GetPage(
      name: getCharacterDetailRoute,
      page: () => CharacterDetailScreen(id: Get.arguments),
      transition: Transition.size,
      transitionDuration: const Duration(milliseconds: 200),
    ),
    GetPage(
      name: getNetworkErrorRoute,
      page: () => NetworkError(),
      transition: Transition.size,
      transitionDuration: const Duration(milliseconds: 200),
    ),
  ];
}
