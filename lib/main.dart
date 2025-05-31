import 'package:flutter/material.dart' show BuildContext, Widget, WidgetsFlutterBinding, runApp;
import 'package:flutter_riverpod/flutter_riverpod.dart' show ConsumerWidget, ProviderScope, WidgetRef;
import 'package:get/get.dart' show GetMaterialApp;
import 'core/init/navigation/navigation_manager.dart';
import 'core/init/theme/theme_notifier.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeNotifier themeNotifier = ref.watch(themeNotifierProvider);
    return GetMaterialApp(
      theme: themeNotifier.currentTheme,
      title: "Harry Potter Characters",
      initialRoute: NavigationManager.getHomeRoute,
      getPages: NavigationManager.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
