import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'spell_response.freezed.dart';
part 'spell_response.g.dart';

@freezed
abstract class SpellResponse with _$SpellResponse {
  const factory SpellResponse({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
  }) = _SpellResponse;

  factory SpellResponse.fromJson(Map<String, Object?> json) =>
      _$SpellResponseFromJson(json);
}
