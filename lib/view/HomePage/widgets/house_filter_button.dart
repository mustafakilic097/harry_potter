import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HouseFilterButton extends StatelessWidget {
  final String selectedHouse;
  final ValueChanged<String> onChanged;

  const HouseFilterButton({Key? key, required this.selectedHouse, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon:
          selectedHouse.isNotEmpty
              ? Badge.count(
                count: 1,
                child: Icon(CupertinoIcons.slider_horizontal_3, color: Colors.blueAccent.shade700),
              )
              : Icon(CupertinoIcons.slider_horizontal_3, color: Colors.blueAccent.shade700),
      onPressed: () async {
        String tempSelected = selectedHouse;
        final result = await showDialog<String>(
          context: context,
          builder: (dialogContext) {
            return StatefulBuilder(
              builder: (BuildContext dialogContext, void Function(void Function()) setState) {
                return AlertDialog(
                  title: const Text("House Filter"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RadioListTile<String>(
                        value: "",
                        groupValue: tempSelected,
                        onChanged: (value) {
                          setState(() {
                            tempSelected = value.toString();
                          });
                        },
                        title: const Text("All"),
                      ),
                      RadioListTile<String>(
                        value: "Slytherin",
                        groupValue: tempSelected,
                        onChanged: (value) {
                          setState(() {
                            tempSelected = value.toString();
                          });
                        },
                        title: const Text("Slytherin"),
                      ),
                      RadioListTile<String>(
                        value: "Gryffindor",
                        groupValue: tempSelected,
                        onChanged: (value) {
                          setState(() {
                            tempSelected = value.toString();
                          });
                        },
                        title: const Text("Gryffindor"),
                      ),
                      RadioListTile<String>(
                        value: "Hufflepuff",
                        groupValue: tempSelected,
                        onChanged: (value) {
                          setState(() {
                            tempSelected = value.toString();
                          });
                        },
                        title: const Text("Hufflepuff"),
                      ),
                      RadioListTile<String>(
                        value: "Ravenclaw",
                        groupValue: tempSelected,
                        onChanged: (value) {
                          setState(() {
                            tempSelected = value.toString();
                          });
                        },
                        title: const Text("Ravenclaw"),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      child: const Text("Cancel"),
                      onPressed: () {
                        Navigator.of(dialogContext).pop();
                      },
                    ),
                    TextButton(
                      child: const Text("Apply"),
                      onPressed: () {
                        Navigator.of(dialogContext).pop(tempSelected);
                      },
                    ),
                  ],
                );
              },
            );
          },
        );

        if (result != null) {
          onChanged(result);
        }
      },
    );
  }
}
