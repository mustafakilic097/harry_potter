import 'dart:io';
import 'package:dio/dio.dart';
import 'package:harry_potter/core/model/character_response.dart';
import 'package:harry_potter/core/model/spell_response.dart';

import '../../constants/enum/service_endpoint.dart';

class MainService {
  MainService(this.dio);
  final Dio dio;

  Future<List<CharacterResponse>?> getAllCharacters() async {
    try {
      final response = await dio.get(ServiceEndpoints.getAllCharacter.getEndpoint);
      if (response.statusCode == HttpStatus.ok) {
        final List<dynamic> jsonList = response.data as List<dynamic>;
        return jsonList.map((e) => CharacterResponse.fromJson(e as Map<String, dynamic>)).toList();
      } else {
        throw DioException(requestOptions: response.requestOptions, response: response);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<CharacterResponse?> getCharacterById(String id) async {
    try {
      final response = await dio.get(ServiceEndpoints.getCharacterById.getEndpoint + id);
      if (response.statusCode == HttpStatus.ok) {
        final List<dynamic> jsonList = response.data as List<dynamic>;
        return CharacterResponse.fromJson(jsonList.first as Map<String, dynamic>);
      } else {
        throw DioException(requestOptions: response.requestOptions, response: response);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<CharacterResponse>?> getAllStudents() async {
    try {
      final response = await dio.get(ServiceEndpoints.getAllStudent.getEndpoint);
      if (response.statusCode == HttpStatus.ok) {
        final List<dynamic> jsonList = response.data as List<dynamic>;
        return jsonList.map((e) => CharacterResponse.fromJson(e as Map<String, dynamic>)).toList();
      } else {
        throw DioException(requestOptions: response.requestOptions, response: response);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<CharacterResponse>?> getAllStaffs() async {
    try {
      final response = await dio.get(ServiceEndpoints.getAllStaff.getEndpoint);
      if (response.statusCode == HttpStatus.ok) {
        final List<dynamic> jsonList = response.data as List<dynamic>;
        return jsonList.map((e) => CharacterResponse.fromJson(e as Map<String, dynamic>)).toList();
      } else {
        throw DioException(requestOptions: response.requestOptions, response: response);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<SpellResponse>?> getAllSpells() async {
    try {
      final response = await dio.get(ServiceEndpoints.getAllSpell.getEndpoint);
      if (response.statusCode == HttpStatus.ok) {
        final List<dynamic> jsonList = response.data as List<dynamic>;
        return jsonList.map((e) => SpellResponse.fromJson(e as Map<String, dynamic>)).toList();
      } else {
        throw DioException(requestOptions: response.requestOptions, response: response);
      }
    } catch (e) {
      rethrow;
    }
  }
}
