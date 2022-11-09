// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonCountry _$CommonCountryFromJson(Map<String, dynamic> json) {
  return _CommonCountry.fromJson(json);
}

/// @nodoc
class _$CommonCountryTearOff {
  const _$CommonCountryTearOff();

  _CommonCountry call({int? id, String? country_code, String? country_name}) {
    return _CommonCountry(
      id: id,
      country_code: country_code,
      country_name: country_name,
    );
  }

  CommonCountry fromJson(Map<String, Object> json) {
    return CommonCountry.fromJson(json);
  }
}

/// @nodoc
const $CommonCountry = _$CommonCountryTearOff();

/// @nodoc
mixin _$CommonCountry {
  int? get id => throw _privateConstructorUsedError;
  String? get country_code => throw _privateConstructorUsedError;
  String? get country_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonCountryCopyWith<CommonCountry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonCountryCopyWith<$Res> {
  factory $CommonCountryCopyWith(
          CommonCountry value, $Res Function(CommonCountry) then) =
      _$CommonCountryCopyWithImpl<$Res>;
  $Res call({int? id, String? country_code, String? country_name});
}

/// @nodoc
class _$CommonCountryCopyWithImpl<$Res>
    implements $CommonCountryCopyWith<$Res> {
  _$CommonCountryCopyWithImpl(this._value, this._then);

  final CommonCountry _value;
  // ignore: unused_field
  final $Res Function(CommonCountry) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? country_code = freezed,
    Object? country_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country_code: country_code == freezed
          ? _value.country_code
          : country_code // ignore: cast_nullable_to_non_nullable
              as String?,
      country_name: country_name == freezed
          ? _value.country_name
          : country_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommonCountryCopyWith<$Res>
    implements $CommonCountryCopyWith<$Res> {
  factory _$CommonCountryCopyWith(
          _CommonCountry value, $Res Function(_CommonCountry) then) =
      __$CommonCountryCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? country_code, String? country_name});
}

/// @nodoc
class __$CommonCountryCopyWithImpl<$Res>
    extends _$CommonCountryCopyWithImpl<$Res>
    implements _$CommonCountryCopyWith<$Res> {
  __$CommonCountryCopyWithImpl(
      _CommonCountry _value, $Res Function(_CommonCountry) _then)
      : super(_value, (v) => _then(v as _CommonCountry));

  @override
  _CommonCountry get _value => super._value as _CommonCountry;

  @override
  $Res call({
    Object? id = freezed,
    Object? country_code = freezed,
    Object? country_name = freezed,
  }) {
    return _then(_CommonCountry(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country_code: country_code == freezed
          ? _value.country_code
          : country_code // ignore: cast_nullable_to_non_nullable
              as String?,
      country_name: country_name == freezed
          ? _value.country_name
          : country_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommonCountry implements _CommonCountry {
  _$_CommonCountry({this.id, this.country_code, this.country_name});

  factory _$_CommonCountry.fromJson(Map<String, dynamic> json) =>
      _$_$_CommonCountryFromJson(json);

  @override
  final int? id;
  @override
  final String? country_code;
  @override
  final String? country_name;

  @override
  String toString() {
    return 'CommonCountry(id: $id, country_code: $country_code, country_name: $country_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommonCountry &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.country_code, country_code) ||
                const DeepCollectionEquality()
                    .equals(other.country_code, country_code)) &&
            (identical(other.country_name, country_name) ||
                const DeepCollectionEquality()
                    .equals(other.country_name, country_name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(country_code) ^
      const DeepCollectionEquality().hash(country_name);

  @JsonKey(ignore: true)
  @override
  _$CommonCountryCopyWith<_CommonCountry> get copyWith =>
      __$CommonCountryCopyWithImpl<_CommonCountry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommonCountryToJson(this);
  }
}

abstract class _CommonCountry implements CommonCountry {
  factory _CommonCountry(
      {int? id, String? country_code, String? country_name}) = _$_CommonCountry;

  factory _CommonCountry.fromJson(Map<String, dynamic> json) =
      _$_CommonCountry.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get country_code => throw _privateConstructorUsedError;
  @override
  String? get country_name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommonCountryCopyWith<_CommonCountry> get copyWith =>
      throw _privateConstructorUsedError;
}
