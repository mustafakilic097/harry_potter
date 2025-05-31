import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harry_potter/core/base/state/base_state.dart';
import 'package:harry_potter/core/base/view/base_view.dart';
import 'package:harry_potter/core/model/character_response.dart';
import 'package:harry_potter/core/viewmodel/view_model.dart';

import 'widgets/detail_header.dart';
import 'widgets/detail_info_table.dart';

class CharacterDetailScreen extends StatefulWidget {
  final String id;
  const CharacterDetailScreen({super.key, required this.id});

  @override
  State<CharacterDetailScreen> createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends BaseState<CharacterDetailScreen> {
  late WidgetRef ref;
  late ViewModel viewModel;
  CharacterResponse? characterDetail;

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: ViewModel(),
      onPageBuilder: (context, _) {
        viewModel = ref.watch(viewModelProvider);
        return Scaffold(appBar: appBar, body: _buildBody(context));
      },
      onModelReady: (model) {
        ref = model;
        Future.delayed(Duration.zero, () async {
          await ref.read(viewModelProvider).getCharacterById(widget.id).then((value) {
            setState(() {
              characterDetail = value;
            });
          });
        });
      },
    );
  }

  AppBar get appBar => AppBar(title: const Text("Character Detail"), backgroundColor: Colors.blueAccent);

  Widget _buildBody(BuildContext context) {
    if (viewModel.isCharacterByIdLoading || characterDetail == null) {
      return const Center(child: CircularProgressIndicator());
    }

    final char = characterDetail!;

    return Column(
      children: [
        DetailHeader(character: char),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: DetailInfoTable(character: char),
          ),
        ),
      ],
    );
  }
}
