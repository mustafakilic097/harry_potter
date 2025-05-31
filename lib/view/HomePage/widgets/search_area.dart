import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:harry_potter/core/model/character_response.dart';
import 'package:harry_potter/core/init/navigation/navigation_manager.dart';
import 'package:harry_potter/core/viewmodel/view_model.dart';

class SearchArea extends StatelessWidget {
  final TextEditingController controller;
  final ViewModel viewModel;

  const SearchArea({super.key, required this.controller, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width * 0.85,
      child: TypeAheadField<CharacterResponse>(
        controller: controller,
        builder: (context, controllerField, focusNode) {
          return TextField(
            controller: controllerField,
            focusNode: focusNode,
            decoration: InputDecoration(
              suffixIcon:
                  (controllerField.text.isNotEmpty)
                      ? IconButton(onPressed: controllerField.clear, icon: const Icon(Icons.close))
                      : null,
              prefixIcon: const Icon(Icons.search_rounded),
              filled: true,
              fillColor: Colors.grey.shade200,
              hintText: "Search name...",
              border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
              contentPadding: const EdgeInsets.all(8),
            ),
          );
        },
        emptyBuilder: (context) => const Text("No results found"),
        suggestionsCallback: (pattern) async {
          if (pattern.length < 2) return [];
          return viewModel.allCharacters
              .where((element) => (element.name ?? "").toLowerCase().contains(pattern.toLowerCase()))
              .toList();
        },
        itemSeparatorBuilder: (context, index) => const Divider(),
        loadingBuilder: (context) => const LinearProgressIndicator(),
        decorationBuilder: (context, child) {
          return Container(
            decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(15)),
            child: child,
          );
        },
        autoFlipMinHeight: 100,
        itemBuilder: (context, suggestion) {
          return ListTile(
            leading: Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              width: 50,
              height: 50,
              child: Image.network(
                suggestion.image ?? "",
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
            title: Text(suggestion.name ?? ""),
            subtitle: Text(suggestion.house ?? ""),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () => Get.toNamed(NavigationManager.getCharacterDetailRoute, arguments: suggestion.id),
          );
        },
        hideOnEmpty: true,
        hideOnError: true,
        onSelected: (suggestion) {
          Get.toNamed(NavigationManager.getCharacterDetailRoute, arguments: suggestion.id);
        },
      ),
    );
  }
}
