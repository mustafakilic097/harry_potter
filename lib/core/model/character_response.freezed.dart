// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterResponse implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'alternate_names') List<String>? get alternateNames;@JsonKey(name: 'species') String? get species;@JsonKey(name: 'gender') String? get gender;@JsonKey(name: 'house') String? get house;@JsonKey(name: 'dateOfBirth') String? get dateOfBirth;@JsonKey(name: 'yearOfBirth') int? get yearOfBirth;@JsonKey(name: 'wizard') bool? get wizard;@JsonKey(name: 'ancestry') String? get ancestry;@JsonKey(name: 'eyeColour') String? get eyeColour;@JsonKey(name: 'hairColour') String? get hairColour;@JsonKey(name: 'wand') Wand? get wand;@JsonKey(name: 'patronus') String? get patronus;@JsonKey(name: 'hogwartsStudent') bool? get hogwartsStudent;@JsonKey(name: 'hogwartsStaff') bool? get hogwartsStaff;@JsonKey(name: 'actor') String? get actor;@JsonKey(name: 'alternate_actors') List<String>? get alternateActors;@JsonKey(name: 'alive') bool? get alive;@JsonKey(name: 'image') String? get image;
/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterResponseCopyWith<CharacterResponse> get copyWith => _$CharacterResponseCopyWithImpl<CharacterResponse>(this as CharacterResponse, _$identity);

  /// Serializes this CharacterResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CharacterResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('alternateNames', alternateNames))..add(DiagnosticsProperty('species', species))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('house', house))..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))..add(DiagnosticsProperty('yearOfBirth', yearOfBirth))..add(DiagnosticsProperty('wizard', wizard))..add(DiagnosticsProperty('ancestry', ancestry))..add(DiagnosticsProperty('eyeColour', eyeColour))..add(DiagnosticsProperty('hairColour', hairColour))..add(DiagnosticsProperty('wand', wand))..add(DiagnosticsProperty('patronus', patronus))..add(DiagnosticsProperty('hogwartsStudent', hogwartsStudent))..add(DiagnosticsProperty('hogwartsStaff', hogwartsStaff))..add(DiagnosticsProperty('actor', actor))..add(DiagnosticsProperty('alternateActors', alternateActors))..add(DiagnosticsProperty('alive', alive))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.alternateNames, alternateNames)&&(identical(other.species, species) || other.species == species)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.house, house) || other.house == house)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.yearOfBirth, yearOfBirth) || other.yearOfBirth == yearOfBirth)&&(identical(other.wizard, wizard) || other.wizard == wizard)&&(identical(other.ancestry, ancestry) || other.ancestry == ancestry)&&(identical(other.eyeColour, eyeColour) || other.eyeColour == eyeColour)&&(identical(other.hairColour, hairColour) || other.hairColour == hairColour)&&(identical(other.wand, wand) || other.wand == wand)&&(identical(other.patronus, patronus) || other.patronus == patronus)&&(identical(other.hogwartsStudent, hogwartsStudent) || other.hogwartsStudent == hogwartsStudent)&&(identical(other.hogwartsStaff, hogwartsStaff) || other.hogwartsStaff == hogwartsStaff)&&(identical(other.actor, actor) || other.actor == actor)&&const DeepCollectionEquality().equals(other.alternateActors, alternateActors)&&(identical(other.alive, alive) || other.alive == alive)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,const DeepCollectionEquality().hash(alternateNames),species,gender,house,dateOfBirth,yearOfBirth,wizard,ancestry,eyeColour,hairColour,wand,patronus,hogwartsStudent,hogwartsStaff,actor,const DeepCollectionEquality().hash(alternateActors),alive,image]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CharacterResponse(id: $id, name: $name, alternateNames: $alternateNames, species: $species, gender: $gender, house: $house, dateOfBirth: $dateOfBirth, yearOfBirth: $yearOfBirth, wizard: $wizard, ancestry: $ancestry, eyeColour: $eyeColour, hairColour: $hairColour, wand: $wand, patronus: $patronus, hogwartsStudent: $hogwartsStudent, hogwartsStaff: $hogwartsStaff, actor: $actor, alternateActors: $alternateActors, alive: $alive, image: $image)';
}


}

/// @nodoc
abstract mixin class $CharacterResponseCopyWith<$Res>  {
  factory $CharacterResponseCopyWith(CharacterResponse value, $Res Function(CharacterResponse) _then) = _$CharacterResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'alternate_names') List<String>? alternateNames,@JsonKey(name: 'species') String? species,@JsonKey(name: 'gender') String? gender,@JsonKey(name: 'house') String? house,@JsonKey(name: 'dateOfBirth') String? dateOfBirth,@JsonKey(name: 'yearOfBirth') int? yearOfBirth,@JsonKey(name: 'wizard') bool? wizard,@JsonKey(name: 'ancestry') String? ancestry,@JsonKey(name: 'eyeColour') String? eyeColour,@JsonKey(name: 'hairColour') String? hairColour,@JsonKey(name: 'wand') Wand? wand,@JsonKey(name: 'patronus') String? patronus,@JsonKey(name: 'hogwartsStudent') bool? hogwartsStudent,@JsonKey(name: 'hogwartsStaff') bool? hogwartsStaff,@JsonKey(name: 'actor') String? actor,@JsonKey(name: 'alternate_actors') List<String>? alternateActors,@JsonKey(name: 'alive') bool? alive,@JsonKey(name: 'image') String? image
});


$WandCopyWith<$Res>? get wand;

}
/// @nodoc
class _$CharacterResponseCopyWithImpl<$Res>
    implements $CharacterResponseCopyWith<$Res> {
  _$CharacterResponseCopyWithImpl(this._self, this._then);

  final CharacterResponse _self;
  final $Res Function(CharacterResponse) _then;

/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? alternateNames = freezed,Object? species = freezed,Object? gender = freezed,Object? house = freezed,Object? dateOfBirth = freezed,Object? yearOfBirth = freezed,Object? wizard = freezed,Object? ancestry = freezed,Object? eyeColour = freezed,Object? hairColour = freezed,Object? wand = freezed,Object? patronus = freezed,Object? hogwartsStudent = freezed,Object? hogwartsStaff = freezed,Object? actor = freezed,Object? alternateActors = freezed,Object? alive = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,alternateNames: freezed == alternateNames ? _self.alternateNames : alternateNames // ignore: cast_nullable_to_non_nullable
as List<String>?,species: freezed == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,yearOfBirth: freezed == yearOfBirth ? _self.yearOfBirth : yearOfBirth // ignore: cast_nullable_to_non_nullable
as int?,wizard: freezed == wizard ? _self.wizard : wizard // ignore: cast_nullable_to_non_nullable
as bool?,ancestry: freezed == ancestry ? _self.ancestry : ancestry // ignore: cast_nullable_to_non_nullable
as String?,eyeColour: freezed == eyeColour ? _self.eyeColour : eyeColour // ignore: cast_nullable_to_non_nullable
as String?,hairColour: freezed == hairColour ? _self.hairColour : hairColour // ignore: cast_nullable_to_non_nullable
as String?,wand: freezed == wand ? _self.wand : wand // ignore: cast_nullable_to_non_nullable
as Wand?,patronus: freezed == patronus ? _self.patronus : patronus // ignore: cast_nullable_to_non_nullable
as String?,hogwartsStudent: freezed == hogwartsStudent ? _self.hogwartsStudent : hogwartsStudent // ignore: cast_nullable_to_non_nullable
as bool?,hogwartsStaff: freezed == hogwartsStaff ? _self.hogwartsStaff : hogwartsStaff // ignore: cast_nullable_to_non_nullable
as bool?,actor: freezed == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as String?,alternateActors: freezed == alternateActors ? _self.alternateActors : alternateActors // ignore: cast_nullable_to_non_nullable
as List<String>?,alive: freezed == alive ? _self.alive : alive // ignore: cast_nullable_to_non_nullable
as bool?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WandCopyWith<$Res>? get wand {
    if (_self.wand == null) {
    return null;
  }

  return $WandCopyWith<$Res>(_self.wand!, (value) {
    return _then(_self.copyWith(wand: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _CharacterResponse with DiagnosticableTreeMixin implements CharacterResponse {
  const _CharacterResponse({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'alternate_names') final  List<String>? alternateNames, @JsonKey(name: 'species') this.species, @JsonKey(name: 'gender') this.gender, @JsonKey(name: 'house') this.house, @JsonKey(name: 'dateOfBirth') this.dateOfBirth, @JsonKey(name: 'yearOfBirth') this.yearOfBirth, @JsonKey(name: 'wizard') this.wizard, @JsonKey(name: 'ancestry') this.ancestry, @JsonKey(name: 'eyeColour') this.eyeColour, @JsonKey(name: 'hairColour') this.hairColour, @JsonKey(name: 'wand') this.wand, @JsonKey(name: 'patronus') this.patronus, @JsonKey(name: 'hogwartsStudent') this.hogwartsStudent, @JsonKey(name: 'hogwartsStaff') this.hogwartsStaff, @JsonKey(name: 'actor') this.actor, @JsonKey(name: 'alternate_actors') final  List<String>? alternateActors, @JsonKey(name: 'alive') this.alive, @JsonKey(name: 'image') this.image}): _alternateNames = alternateNames,_alternateActors = alternateActors;
  factory _CharacterResponse.fromJson(Map<String, dynamic> json) => _$CharacterResponseFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'name') final  String? name;
 final  List<String>? _alternateNames;
@override@JsonKey(name: 'alternate_names') List<String>? get alternateNames {
  final value = _alternateNames;
  if (value == null) return null;
  if (_alternateNames is EqualUnmodifiableListView) return _alternateNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'species') final  String? species;
@override@JsonKey(name: 'gender') final  String? gender;
@override@JsonKey(name: 'house') final  String? house;
@override@JsonKey(name: 'dateOfBirth') final  String? dateOfBirth;
@override@JsonKey(name: 'yearOfBirth') final  int? yearOfBirth;
@override@JsonKey(name: 'wizard') final  bool? wizard;
@override@JsonKey(name: 'ancestry') final  String? ancestry;
@override@JsonKey(name: 'eyeColour') final  String? eyeColour;
@override@JsonKey(name: 'hairColour') final  String? hairColour;
@override@JsonKey(name: 'wand') final  Wand? wand;
@override@JsonKey(name: 'patronus') final  String? patronus;
@override@JsonKey(name: 'hogwartsStudent') final  bool? hogwartsStudent;
@override@JsonKey(name: 'hogwartsStaff') final  bool? hogwartsStaff;
@override@JsonKey(name: 'actor') final  String? actor;
 final  List<String>? _alternateActors;
@override@JsonKey(name: 'alternate_actors') List<String>? get alternateActors {
  final value = _alternateActors;
  if (value == null) return null;
  if (_alternateActors is EqualUnmodifiableListView) return _alternateActors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'alive') final  bool? alive;
@override@JsonKey(name: 'image') final  String? image;

/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterResponseCopyWith<_CharacterResponse> get copyWith => __$CharacterResponseCopyWithImpl<_CharacterResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CharacterResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('alternateNames', alternateNames))..add(DiagnosticsProperty('species', species))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('house', house))..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))..add(DiagnosticsProperty('yearOfBirth', yearOfBirth))..add(DiagnosticsProperty('wizard', wizard))..add(DiagnosticsProperty('ancestry', ancestry))..add(DiagnosticsProperty('eyeColour', eyeColour))..add(DiagnosticsProperty('hairColour', hairColour))..add(DiagnosticsProperty('wand', wand))..add(DiagnosticsProperty('patronus', patronus))..add(DiagnosticsProperty('hogwartsStudent', hogwartsStudent))..add(DiagnosticsProperty('hogwartsStaff', hogwartsStaff))..add(DiagnosticsProperty('actor', actor))..add(DiagnosticsProperty('alternateActors', alternateActors))..add(DiagnosticsProperty('alive', alive))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._alternateNames, _alternateNames)&&(identical(other.species, species) || other.species == species)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.house, house) || other.house == house)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.yearOfBirth, yearOfBirth) || other.yearOfBirth == yearOfBirth)&&(identical(other.wizard, wizard) || other.wizard == wizard)&&(identical(other.ancestry, ancestry) || other.ancestry == ancestry)&&(identical(other.eyeColour, eyeColour) || other.eyeColour == eyeColour)&&(identical(other.hairColour, hairColour) || other.hairColour == hairColour)&&(identical(other.wand, wand) || other.wand == wand)&&(identical(other.patronus, patronus) || other.patronus == patronus)&&(identical(other.hogwartsStudent, hogwartsStudent) || other.hogwartsStudent == hogwartsStudent)&&(identical(other.hogwartsStaff, hogwartsStaff) || other.hogwartsStaff == hogwartsStaff)&&(identical(other.actor, actor) || other.actor == actor)&&const DeepCollectionEquality().equals(other._alternateActors, _alternateActors)&&(identical(other.alive, alive) || other.alive == alive)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,const DeepCollectionEquality().hash(_alternateNames),species,gender,house,dateOfBirth,yearOfBirth,wizard,ancestry,eyeColour,hairColour,wand,patronus,hogwartsStudent,hogwartsStaff,actor,const DeepCollectionEquality().hash(_alternateActors),alive,image]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CharacterResponse(id: $id, name: $name, alternateNames: $alternateNames, species: $species, gender: $gender, house: $house, dateOfBirth: $dateOfBirth, yearOfBirth: $yearOfBirth, wizard: $wizard, ancestry: $ancestry, eyeColour: $eyeColour, hairColour: $hairColour, wand: $wand, patronus: $patronus, hogwartsStudent: $hogwartsStudent, hogwartsStaff: $hogwartsStaff, actor: $actor, alternateActors: $alternateActors, alive: $alive, image: $image)';
}


}

/// @nodoc
abstract mixin class _$CharacterResponseCopyWith<$Res> implements $CharacterResponseCopyWith<$Res> {
  factory _$CharacterResponseCopyWith(_CharacterResponse value, $Res Function(_CharacterResponse) _then) = __$CharacterResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'alternate_names') List<String>? alternateNames,@JsonKey(name: 'species') String? species,@JsonKey(name: 'gender') String? gender,@JsonKey(name: 'house') String? house,@JsonKey(name: 'dateOfBirth') String? dateOfBirth,@JsonKey(name: 'yearOfBirth') int? yearOfBirth,@JsonKey(name: 'wizard') bool? wizard,@JsonKey(name: 'ancestry') String? ancestry,@JsonKey(name: 'eyeColour') String? eyeColour,@JsonKey(name: 'hairColour') String? hairColour,@JsonKey(name: 'wand') Wand? wand,@JsonKey(name: 'patronus') String? patronus,@JsonKey(name: 'hogwartsStudent') bool? hogwartsStudent,@JsonKey(name: 'hogwartsStaff') bool? hogwartsStaff,@JsonKey(name: 'actor') String? actor,@JsonKey(name: 'alternate_actors') List<String>? alternateActors,@JsonKey(name: 'alive') bool? alive,@JsonKey(name: 'image') String? image
});


@override $WandCopyWith<$Res>? get wand;

}
/// @nodoc
class __$CharacterResponseCopyWithImpl<$Res>
    implements _$CharacterResponseCopyWith<$Res> {
  __$CharacterResponseCopyWithImpl(this._self, this._then);

  final _CharacterResponse _self;
  final $Res Function(_CharacterResponse) _then;

/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? alternateNames = freezed,Object? species = freezed,Object? gender = freezed,Object? house = freezed,Object? dateOfBirth = freezed,Object? yearOfBirth = freezed,Object? wizard = freezed,Object? ancestry = freezed,Object? eyeColour = freezed,Object? hairColour = freezed,Object? wand = freezed,Object? patronus = freezed,Object? hogwartsStudent = freezed,Object? hogwartsStaff = freezed,Object? actor = freezed,Object? alternateActors = freezed,Object? alive = freezed,Object? image = freezed,}) {
  return _then(_CharacterResponse(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,alternateNames: freezed == alternateNames ? _self._alternateNames : alternateNames // ignore: cast_nullable_to_non_nullable
as List<String>?,species: freezed == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,yearOfBirth: freezed == yearOfBirth ? _self.yearOfBirth : yearOfBirth // ignore: cast_nullable_to_non_nullable
as int?,wizard: freezed == wizard ? _self.wizard : wizard // ignore: cast_nullable_to_non_nullable
as bool?,ancestry: freezed == ancestry ? _self.ancestry : ancestry // ignore: cast_nullable_to_non_nullable
as String?,eyeColour: freezed == eyeColour ? _self.eyeColour : eyeColour // ignore: cast_nullable_to_non_nullable
as String?,hairColour: freezed == hairColour ? _self.hairColour : hairColour // ignore: cast_nullable_to_non_nullable
as String?,wand: freezed == wand ? _self.wand : wand // ignore: cast_nullable_to_non_nullable
as Wand?,patronus: freezed == patronus ? _self.patronus : patronus // ignore: cast_nullable_to_non_nullable
as String?,hogwartsStudent: freezed == hogwartsStudent ? _self.hogwartsStudent : hogwartsStudent // ignore: cast_nullable_to_non_nullable
as bool?,hogwartsStaff: freezed == hogwartsStaff ? _self.hogwartsStaff : hogwartsStaff // ignore: cast_nullable_to_non_nullable
as bool?,actor: freezed == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as String?,alternateActors: freezed == alternateActors ? _self._alternateActors : alternateActors // ignore: cast_nullable_to_non_nullable
as List<String>?,alive: freezed == alive ? _self.alive : alive // ignore: cast_nullable_to_non_nullable
as bool?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WandCopyWith<$Res>? get wand {
    if (_self.wand == null) {
    return null;
  }

  return $WandCopyWith<$Res>(_self.wand!, (value) {
    return _then(_self.copyWith(wand: value));
  });
}
}


/// @nodoc
mixin _$Wand implements DiagnosticableTreeMixin {

@JsonKey(name: 'wood') String? get wood;@JsonKey(name: 'core') String? get core;@JsonKey(name: 'length') int? get length;
/// Create a copy of Wand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WandCopyWith<Wand> get copyWith => _$WandCopyWithImpl<Wand>(this as Wand, _$identity);

  /// Serializes this Wand to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Wand'))
    ..add(DiagnosticsProperty('wood', wood))..add(DiagnosticsProperty('core', core))..add(DiagnosticsProperty('length', length));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Wand&&(identical(other.wood, wood) || other.wood == wood)&&(identical(other.core, core) || other.core == core)&&(identical(other.length, length) || other.length == length));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wood,core,length);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Wand(wood: $wood, core: $core, length: $length)';
}


}

/// @nodoc
abstract mixin class $WandCopyWith<$Res>  {
  factory $WandCopyWith(Wand value, $Res Function(Wand) _then) = _$WandCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'wood') String? wood,@JsonKey(name: 'core') String? core,@JsonKey(name: 'length') int? length
});




}
/// @nodoc
class _$WandCopyWithImpl<$Res>
    implements $WandCopyWith<$Res> {
  _$WandCopyWithImpl(this._self, this._then);

  final Wand _self;
  final $Res Function(Wand) _then;

/// Create a copy of Wand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wood = freezed,Object? core = freezed,Object? length = freezed,}) {
  return _then(_self.copyWith(
wood: freezed == wood ? _self.wood : wood // ignore: cast_nullable_to_non_nullable
as String?,core: freezed == core ? _self.core : core // ignore: cast_nullable_to_non_nullable
as String?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Wand with DiagnosticableTreeMixin implements Wand {
  const _Wand({@JsonKey(name: 'wood') this.wood, @JsonKey(name: 'core') this.core, @JsonKey(name: 'length') this.length});
  factory _Wand.fromJson(Map<String, dynamic> json) => _$WandFromJson(json);

@override@JsonKey(name: 'wood') final  String? wood;
@override@JsonKey(name: 'core') final  String? core;
@override@JsonKey(name: 'length') final  int? length;

/// Create a copy of Wand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WandCopyWith<_Wand> get copyWith => __$WandCopyWithImpl<_Wand>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WandToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Wand'))
    ..add(DiagnosticsProperty('wood', wood))..add(DiagnosticsProperty('core', core))..add(DiagnosticsProperty('length', length));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Wand&&(identical(other.wood, wood) || other.wood == wood)&&(identical(other.core, core) || other.core == core)&&(identical(other.length, length) || other.length == length));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wood,core,length);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Wand(wood: $wood, core: $core, length: $length)';
}


}

/// @nodoc
abstract mixin class _$WandCopyWith<$Res> implements $WandCopyWith<$Res> {
  factory _$WandCopyWith(_Wand value, $Res Function(_Wand) _then) = __$WandCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'wood') String? wood,@JsonKey(name: 'core') String? core,@JsonKey(name: 'length') int? length
});




}
/// @nodoc
class __$WandCopyWithImpl<$Res>
    implements _$WandCopyWith<$Res> {
  __$WandCopyWithImpl(this._self, this._then);

  final _Wand _self;
  final $Res Function(_Wand) _then;

/// Create a copy of Wand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wood = freezed,Object? core = freezed,Object? length = freezed,}) {
  return _then(_Wand(
wood: freezed == wood ? _self.wood : wood // ignore: cast_nullable_to_non_nullable
as String?,core: freezed == core ? _self.core : core // ignore: cast_nullable_to_non_nullable
as String?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
