// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spell_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpellResponse implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'description') String? get description;
/// Create a copy of SpellResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpellResponseCopyWith<SpellResponse> get copyWith => _$SpellResponseCopyWithImpl<SpellResponse>(this as SpellResponse, _$identity);

  /// Serializes this SpellResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SpellResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpellResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SpellResponse(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $SpellResponseCopyWith<$Res>  {
  factory $SpellResponseCopyWith(SpellResponse value, $Res Function(SpellResponse) _then) = _$SpellResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description
});




}
/// @nodoc
class _$SpellResponseCopyWithImpl<$Res>
    implements $SpellResponseCopyWith<$Res> {
  _$SpellResponseCopyWithImpl(this._self, this._then);

  final SpellResponse _self;
  final $Res Function(SpellResponse) _then;

/// Create a copy of SpellResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SpellResponse with DiagnosticableTreeMixin implements SpellResponse {
  const _SpellResponse({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'description') this.description});
  factory _SpellResponse.fromJson(Map<String, dynamic> json) => _$SpellResponseFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'description') final  String? description;

/// Create a copy of SpellResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpellResponseCopyWith<_SpellResponse> get copyWith => __$SpellResponseCopyWithImpl<_SpellResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpellResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SpellResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('description', description));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpellResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SpellResponse(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$SpellResponseCopyWith<$Res> implements $SpellResponseCopyWith<$Res> {
  factory _$SpellResponseCopyWith(_SpellResponse value, $Res Function(_SpellResponse) _then) = __$SpellResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'description') String? description
});




}
/// @nodoc
class __$SpellResponseCopyWithImpl<$Res>
    implements _$SpellResponseCopyWith<$Res> {
  __$SpellResponseCopyWithImpl(this._self, this._then);

  final _SpellResponse _self;
  final $Res Function(_SpellResponse) _then;

/// Create a copy of SpellResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,}) {
  return _then(_SpellResponse(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
