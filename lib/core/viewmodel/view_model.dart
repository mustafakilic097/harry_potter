import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harry_potter/core/init/network/network_manager.dart';
import 'package:harry_potter/core/model/character_response.dart';
import 'package:harry_potter/core/model/spell_response.dart';

import '../init/service/main_service.dart';

class ViewModel extends ChangeNotifier {
  bool _isAllCharactersLoading = false;
  bool get isAllCharactersLoading => _isAllCharactersLoading;
  set isAllCharactersLoading(bool value) {
    _isAllCharactersLoading = value;
    notifyListeners();
  }

  bool _isCharacterByIdLoading = false;
  bool get isCharacterByIdLoading => _isCharacterByIdLoading;
  set isCharacterByIdLoading(bool value) {
    _isCharacterByIdLoading = value;
    notifyListeners();
  }

  bool _isAllStudentsLoading = false;
  bool get isAllStudentsLoading => _isAllStudentsLoading;
  set isAllStudentsLoading(bool value) {
    _isAllStudentsLoading = value;
    notifyListeners();
  }

  bool _isAllStaffsLoading = false;
  bool get isAllStaffsLoading => _isAllStaffsLoading;
  set isAllStaffsLoading(bool value) {
    _isAllStaffsLoading = value;
    notifyListeners();
  }

  bool _isAllSpellsLoading = false;
  bool get isAllSpellsLoading => _isAllSpellsLoading;
  set isAllSpellsLoading(bool value) {
    _isAllSpellsLoading = value;
    notifyListeners();
  }

  List<CharacterResponse> _allCharacters = [];
  List<CharacterResponse> get allCharacters => _allCharacters;
  set allCharacters(List<CharacterResponse> value) {
    _allCharacters = value;
    notifyListeners();
  }

  List<CharacterResponse> _allStudents = [];
  List<CharacterResponse> get allStudents => _allStudents;
  set allStudents(List<CharacterResponse> value) {
    _allStudents = value;
    notifyListeners();
  }

  List<CharacterResponse> _allStaffs = [];
  List<CharacterResponse> get allStaffs => _allStaffs;
  set allStaffs(List<CharacterResponse> value) {
    _allStaffs = value;
    notifyListeners();
  }

  List<SpellResponse> _allSpells = [];
  List<SpellResponse> get allSpells => _allSpells;
  set allSpells(List<SpellResponse> value) {
    _allSpells = value;
    notifyListeners();
  }

  Future<bool> getAllCharacters() async {
    isAllCharactersLoading = true;
    try {
      var response = await MainService(NetworkManager.instance.dio).getAllCharacters();
      if (response != null) {
        allCharacters = response;
        isAllCharactersLoading = false;
        return true;
      } else {
        return false;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<CharacterResponse?> getCharacterById(String id) async {
    isCharacterByIdLoading = true;
    try {
      var response = await MainService(NetworkManager.instance.dio).getCharacterById(id);
      if (response != null) {
        isCharacterByIdLoading = false;
        return response;
      }
    } catch (e) {
      isCharacterByIdLoading = false;
      rethrow;
    }
    isCharacterByIdLoading = false;
    return null;
  }

  Future<bool> getAllStudents() async {
    isAllStudentsLoading = true;
    try {
      var response = await MainService(NetworkManager.instance.dio).getAllStudents();
      if (response != null) {
        allStudents = response;
        isAllStudentsLoading = false;
        return true;
      } else {
        return false;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> getAllStaffs() async {
    isAllStaffsLoading = true;
    try {
      var response = await MainService(NetworkManager.instance.dio).getAllStaffs();
      if (response != null) {
        allStaffs = response;
        isAllStaffsLoading = false;
        return true;
      } else {
        return false;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> getAllSpells() async {
    isAllSpellsLoading = true;
    try {
      var response = await MainService(NetworkManager.instance.dio).getAllSpells();
      if (response != null) {
        allSpells = response;
        isAllSpellsLoading = false;
        return true;
      } else {
        return false;
      }
    } catch (e) {
      rethrow;
    }
  }
}

final viewModelProvider = ChangeNotifierProvider.autoDispose((ref) => ViewModel());
