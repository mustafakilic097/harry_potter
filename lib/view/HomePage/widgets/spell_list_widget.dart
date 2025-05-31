import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harry_potter/core/model/spell_response.dart';

class SpellListWidget extends StatelessWidget {
  final List<SpellResponse> spells;
  final bool isLoading;

  const SpellListWidget({Key? key, required this.spells, required this.isLoading}) : super(key: key);

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
        itemCount: spells.length,
        itemBuilder: (context, index) {
          final spell = spells[index];
          return ListTile(
            leading: const CircleAvatar(child: Icon(Icons.auto_awesome)),
            title: Text(spell.name ?? ""),
            subtitle: Text(spell.description ?? "", maxLines: 1, overflow: TextOverflow.ellipsis),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(spell.name ?? ""),
                    content: Text(spell.description ?? ""),
                    actions: [TextButton(child: const Text("Close"), onPressed: () => Get.back())],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
