import 'package:flutter/material.dart';
import 'package:harry_potter/core/model/character_response.dart';

class DetailInfoTable extends StatelessWidget {
  final CharacterResponse character;

  const DetailInfoTable({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rows = _buildStyledRows();

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Table(
          columnWidths: const {0: FlexColumnWidth(3), 1: FlexColumnWidth(5)},
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder.symmetric(inside: BorderSide(color: Colors.grey.shade300)),
          children: rows,
        ),
      ),
    );
  }

  List<TableRow> _buildStyledRows() {
    final entries = <MapEntry<String, String?>>[
      MapEntry("Name", character.name),
      MapEntry(
        "Alternate Names",
        (character.alternateNames != null && character.alternateNames!.isNotEmpty)
            ? character.alternateNames!.join(", ")
            : null,
      ),
      MapEntry("Species", character.species),
      MapEntry("Gender", character.gender),
      MapEntry("House", character.house),
      MapEntry("Date of Birth", character.dateOfBirth),
      MapEntry("Year of Birth", character.yearOfBirth?.toString()),
      MapEntry("Wizard", character.wizard != null ? (character.wizard! ? "Yes" : "No") : null),
      MapEntry("Ancestry", character.ancestry),
      MapEntry("Eye Colour", character.eyeColour),
      MapEntry("Hair Colour", character.hairColour),
      MapEntry("Wand Wood", _wandWood()),
      MapEntry("Wand Core", _wandCore()),
      MapEntry("Wand Length", _wandLength()),
      MapEntry("Patronus", character.patronus),
      MapEntry(
        "Hogwarts Student",
        character.hogwartsStudent != null ? (character.hogwartsStudent! ? "Yes" : "No") : null,
      ),
      MapEntry("Hogwarts Staff", character.hogwartsStaff != null ? (character.hogwartsStaff! ? "Yes" : "No") : null),
      MapEntry("Actor", character.actor),
      MapEntry(
        "Alternate Actors",
        (character.alternateActors != null && character.alternateActors!.isNotEmpty)
            ? character.alternateActors!.join(", ")
            : null,
      ),
      MapEntry("Alive", character.alive != null ? (character.alive! ? "Yes" : "No") : null),
    ];

    final List<TableRow> rows = [];
    for (var i = 0; i < entries.length; i++) {
      final background = (i % 2 == 0) ? Colors.grey.shade50 : Colors.grey.shade100;
      final keyText = entries[i].key;
      final valueText = (entries[i].value != null && entries[i].value!.isNotEmpty) ? entries[i].value! : "-";

      rows.add(
        TableRow(
          decoration: BoxDecoration(color: background),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Text(
                keyText,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Text(valueText, style: const TextStyle(fontSize: 16, color: Colors.black87)),
            ),
          ],
        ),
      );
    }

    return rows;
  }

  String? _wandWood() {
    return character.wand?.wood;
  }

  String? _wandCore() {
    return character.wand?.core;
  }

  String? _wandLength() {
    return character.wand?.length?.toString();
  }
}
