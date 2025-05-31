import 'package:flutter/material.dart';
import 'package:contentsize_tabbarview/contentsize_tabbarview.dart';
import 'package:harry_potter/core/viewmodel/view_model.dart';

import 'generic_character_list.dart';
import 'spell_list_widget.dart';

class HomeTabView extends StatelessWidget {
  final ViewModel viewModel;
  final String selectedHouse;

  const HomeTabView({Key? key, required this.viewModel, required this.selectedHouse}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            tabs: [
              Tab(child: Chip(label: const Text("Characters"), backgroundColor: Colors.blueAccent.shade400)),
              Tab(child: Chip(label: const Text("Hogwarts Students"), backgroundColor: Colors.blueAccent.shade400)),
              Tab(child: Chip(label: const Text("Hogwarts Staffs"), backgroundColor: Colors.blueAccent.shade400)),
              Tab(child: Chip(label: const Text("All Spells"), backgroundColor: Colors.blueAccent.shade400)),
            ],
            dividerColor: Colors.transparent,
            indicatorPadding: const EdgeInsets.only(top: 10, right: 15, left: 15, bottom: 3),
            indicator: BoxDecoration(color: Colors.blueAccent.shade700, borderRadius: BorderRadius.circular(10)),
            indicatorSize: TabBarIndicatorSize.label,
          ),
          Expanded(
            child: ContentSizeTabBarView(
              children: [
                GenericCharacterList(
                  items: viewModel.allCharacters,
                  isLoading: viewModel.isAllCharactersLoading,
                  selectedHouse: selectedHouse,
                ),
                GenericCharacterList(
                  items: viewModel.allStudents,
                  isLoading: viewModel.isAllStudentsLoading,
                  selectedHouse: selectedHouse,
                ),
                GenericCharacterList(
                  items: viewModel.allStaffs,
                  isLoading: viewModel.isAllStaffsLoading,
                  selectedHouse: selectedHouse,
                ),
                SpellListWidget(spells: viewModel.allSpells, isLoading: viewModel.isAllSpellsLoading),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
