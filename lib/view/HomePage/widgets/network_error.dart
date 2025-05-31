import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harry_potter/core/init/navigation/navigation_manager.dart';

class NetworkError extends StatelessWidget {
  const NetworkError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Network Error.\nCheck your internet connection\nPlease try again", textAlign: TextAlign.center),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(NavigationManager.getHomeRoute);
              },
              child: const Text("Retry"),
            ),
          ],
        ),
      ),
    );
  }
}
