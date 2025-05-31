import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:harry_potter/core/model/character_response.dart';
import 'package:harry_potter/core/init/navigation/navigation_manager.dart';

class GenericCharacterList extends StatelessWidget {
  final List<CharacterResponse> items;
  final bool isLoading;
  final String selectedHouse;

  const GenericCharacterList({super.key, required this.items, required this.isLoading, required this.selectedHouse});

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [CircularProgressIndicator(), SizedBox(height: 8), Text("Loading...")],
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          if (selectedHouse.isNotEmpty && item.house != selectedHouse) {
            return const SizedBox.shrink();
          }
          return ListTile(
            leading: Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              width: 50,
              height: 50,
              child: Image.network(
                item.image ?? "",
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey.shade200,
                    child: Icon(CupertinoIcons.person_fill, color: Colors.grey),
                  );
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const CircularProgressIndicator();
                },
              ),
            ),
            title: Text(item.name ?? ""),
            subtitle: Text(item.house ?? ""),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              Get.toNamed(NavigationManager.getCharacterDetailRoute, arguments: item.id);
            },
          );
        },
      ),
    );
  }
}
