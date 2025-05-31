import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harry_potter/core/base/state/base_state.dart';
import 'package:harry_potter/core/viewmodel/view_model.dart';

import '../../core/base/view/base_view.dart';
import 'widgets/search_area.dart';
import 'widgets/house_filter_button.dart';
import 'widgets/home_tab_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseState<HomeScreen> {
  late WidgetRef ref;
  late ViewModel viewModel;
  final TextEditingController controller = TextEditingController();
  String selectedHouse = "";

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: ViewModel(),
      onPageBuilder: (BuildContext context, _) {
        viewModel = ref.watch(viewModelProvider);
        return Scaffold(
          appBar: appBar,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SearchArea(controller: controller, viewModel: viewModel),
                  HouseFilterButton(
                    selectedHouse: selectedHouse,
                    onChanged: (value) {
                      setState(() {
                        selectedHouse = value;
                      });
                    },
                  ),
                ],
              ),
              Expanded(child: HomeTabView(viewModel: viewModel, selectedHouse: selectedHouse)),
            ],
          ),
        );
      },
      onModelReady: (WidgetRef model) {
        ref = model;
        Future.delayed(Duration.zero, () async {
          await ref.read(viewModelProvider).getAllCharacters();
          await ref.read(viewModelProvider).getAllStudents();
          await ref.read(viewModelProvider).getAllStaffs();
          await ref.read(viewModelProvider).getAllSpells();
        });
        controller.addListener(() {
          setState(() {});
        });
      },
    );
  }

  AppBar get appBar => AppBar(title: const Text("Harry Potter Characters"), backgroundColor: Colors.blueAccent);
}
