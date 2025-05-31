import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'character_response.freezed.dart';
part 'character_response.g.dart';

@freezed
abstract class CharacterResponse with _$CharacterResponse {
  const factory CharacterResponse({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'alternate_names') List<String>? alternateNames,
    @JsonKey(name: 'species') String? species,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'house') String? house,
    @JsonKey(name: 'dateOfBirth') String? dateOfBirth,
    @JsonKey(name: 'yearOfBirth') int? yearOfBirth,
    @JsonKey(name: 'wizard') bool? wizard,
    @JsonKey(name: 'ancestry') String? ancestry,
    @JsonKey(name: 'eyeColour') String? eyeColour,
    @JsonKey(name: 'hairColour') String? hairColour,
    @JsonKey(name: 'wand') Wand? wand,
    @JsonKey(name: 'patronus') String? patronus,
    @JsonKey(name: 'hogwartsStudent') bool? hogwartsStudent,
    @JsonKey(name: 'hogwartsStaff') bool? hogwartsStaff,
    @JsonKey(name: 'actor') String? actor,
    @JsonKey(name: 'alternate_actors') List<String>? alternateActors,
    @JsonKey(name: 'alive') bool? alive,
    @JsonKey(name: 'image') String? image,
  }) = _CharacterResponse;

  factory CharacterResponse.fromJson(Map<String, Object?> json) =>
      _$CharacterResponseFromJson(json);
}

@freezed
abstract class Wand with _$Wand {
  const factory Wand({
    @JsonKey(name: 'wood') String? wood,
    @JsonKey(name: 'core') String? core,
    @JsonKey(name: 'length') int? length,
  }) = _Wand;

  factory Wand.fromJson(Map<String, Object?> json) => _$WandFromJson(json);
}
