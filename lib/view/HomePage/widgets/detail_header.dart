import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:harry_potter/core/model/character_response.dart';

class DetailHeader extends StatelessWidget {
  final CharacterResponse character;

  const DetailHeader({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.15,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenHeight * 0.10,
            child: Container(color: Colors.blueAccent),
          ),

          Positioned(
            left: 150,
            bottom: screenHeight * 0.06,
            child: Text(
              character.name ?? "",
              style: const TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 16,
            child: Container(
              width: 100,
              height: 100,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.network(
                character.image ?? "",
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey.shade200,
                    child: Icon(CupertinoIcons.person_fill, color: Colors.grey),
                  );
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
