// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonLocation _$CommonLocationFromJson(Map<String, dynamic> json) {
  return _CommonLocation.fromJson(json);
}

/// @nodoc
class _$CommonLocationTearOff {
  const _$CommonLocationTearOff();

  _CommonLocation call(
      {@HiveField(0) String? name,
      @HiveField(1) int? id,
      @HiveField(2) int? district_id,
      @HiveField(3) String? type,
      @HiveField(4) int? city_id}) {
    return _CommonLocation(
      name: name,
      id: id,
      district_id: district_id,
      type: type,
      city_id: city_id,
    );
  }

  CommonLocation fromJson(Map<String, Object> json) {
    return CommonLocation.fromJson(json);
  }
}

/// @nodoc
const $CommonLocation = _$CommonLocationTearOff();

/// @nodoc
mixin _$CommonLocation {
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get district_id => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get type => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get city_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonLocationCopyWith<CommonLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonLocationCopyWith<$Res> {
  factory $CommonLocationCopyWith(
          CommonLocation value, $Res Function(CommonLocation) then) =
      _$CommonLocationCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? name,
      @HiveField(1) int? id,
      @HiveField(2) int? district_id,
      @HiveField(3) String? type,
      @HiveField(4) int? city_id});
}

/// @nodoc
class _$CommonLocationCopyWithImpl<$Res>
    implements $CommonLocationCopyWith<$Res> {
  _$CommonLocationCopyWithImpl(this._value, this._then);

  final CommonLocation _value;
  // ignore: unused_field
  final $Res Function(CommonLocation) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? district_id = freezed,
    Object? type = freezed,
    Object? city_id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      district_id: district_id == freezed
          ? _value.district_id
          : district_id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      city_id: city_id == freezed
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CommonLocationCopyWith<$Res>
    implements $CommonLocationCopyWith<$Res> {
  factory _$CommonLocationCopyWith(
          _CommonLocation value, $Res Function(_CommonLocation) then) =
      __$CommonLocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? name,
      @HiveField(1) int? id,
      @HiveField(2) int? district_id,
      @HiveField(3) String? type,
      @HiveField(4) int? city_id});
}

/// @nodoc
class __$CommonLocationCopyWithImpl<$Res>
    extends _$CommonLocationCopyWithImpl<$Res>
    implements _$CommonLocationCopyWith<$Res> {
  __$CommonLocationCopyWithImpl(
      _CommonLocation _value, $Res Function(_CommonLocation) _then)
      : super(_value, (v) => _then(v as _CommonLocation));

  @override
  _CommonLocation get _value => super._value as _CommonLocation;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? district_id = freezed,
    Object? type = freezed,
    Object? city_id = freezed,
  }) {
    return _then(_CommonLocation(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      district_id: district_id == freezed
          ? _value.district_id
          : district_id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      city_id: city_id == freezed
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommonLocation implements _CommonLocation {
  _$_CommonLocation(
      {@HiveField(0) this.name,
      @HiveField(1) this.id,
      @HiveField(2) this.district_id,
      @HiveField(3) this.type,
      @HiveField(4) this.city_id});

  factory _$_CommonLocation.fromJson(Map<String, dynamic> json) =>
      _$_$_CommonLocationFromJson(json);

  @override
  @HiveField(0)
  final String? name;
  @override
  @HiveField(1)
  final int? id;
  @override
  @HiveField(2)
  final int? district_id;
  @override
  @HiveField(3)
  final String? type;
  @override
  @HiveField(4)
  final int? city_id;

  @override
  String toString() {
    return 'CommonLocation(name: $name, id: $id, district_id: $district_id, type: $type, city_id: $city_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommonLocation &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.district_id, district_id) ||
                const DeepCollectionEquality()
                    .equals(other.district_id, district_id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.city_id, city_id) ||
                const DeepCollectionEquality().equals(other.city_id, city_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(district_id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(city_id);

  @JsonKey(ignore: true)
  @override
  _$CommonLocationCopyWith<_CommonLocation> get copyWith =>
      __$CommonLocationCopyWithImpl<_CommonLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommonLocationToJson(this);
  }
}

abstract class _CommonLocation implements CommonLocation {
  factory _CommonLocation(
      {@HiveField(0) String? name,
      @HiveField(1) int? id,
      @HiveField(2) int? district_id,
      @HiveField(3) String? type,
      @HiveField(4) int? city_id}) = _$_CommonLocation;

  factory _CommonLocation.fromJson(Map<String, dynamic> json) =
      _$_CommonLocation.fromJson;

  @override
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  int? get id => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  int? get district_id => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String? get type => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  int? get city_id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommonLocationCopyWith<_CommonLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
