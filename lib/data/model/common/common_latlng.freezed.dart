// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_latlng.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonLatLng _$CommonLatLngFromJson(Map<String, dynamic> json) {
  return _CommonLatLng.fromJson(json);
}

/// @nodoc
class _$CommonLatLngTearOff {
  const _$CommonLatLngTearOff();

  _CommonLatLng call({double? lat, double? lng, String? placeName}) {
    return _CommonLatLng(
      lat: lat,
      lng: lng,
      placeName: placeName,
    );
  }

  CommonLatLng fromJson(Map<String, Object> json) {
    return CommonLatLng.fromJson(json);
  }
}

/// @nodoc
const $CommonLatLng = _$CommonLatLngTearOff();

/// @nodoc
mixin _$CommonLatLng {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  String? get placeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonLatLngCopyWith<CommonLatLng> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonLatLngCopyWith<$Res> {
  factory $CommonLatLngCopyWith(
          CommonLatLng value, $Res Function(CommonLatLng) then) =
      _$CommonLatLngCopyWithImpl<$Res>;
  $Res call({double? lat, double? lng, String? placeName});
}

/// @nodoc
class _$CommonLatLngCopyWithImpl<$Res> implements $CommonLatLngCopyWith<$Res> {
  _$CommonLatLngCopyWithImpl(this._value, this._then);

  final CommonLatLng _value;
  // ignore: unused_field
  final $Res Function(CommonLatLng) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? placeName = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommonLatLngCopyWith<$Res>
    implements $CommonLatLngCopyWith<$Res> {
  factory _$CommonLatLngCopyWith(
          _CommonLatLng value, $Res Function(_CommonLatLng) then) =
      __$CommonLatLngCopyWithImpl<$Res>;
  @override
  $Res call({double? lat, double? lng, String? placeName});
}

/// @nodoc
class __$CommonLatLngCopyWithImpl<$Res> extends _$CommonLatLngCopyWithImpl<$Res>
    implements _$CommonLatLngCopyWith<$Res> {
  __$CommonLatLngCopyWithImpl(
      _CommonLatLng _value, $Res Function(_CommonLatLng) _then)
      : super(_value, (v) => _then(v as _CommonLatLng));

  @override
  _CommonLatLng get _value => super._value as _CommonLatLng;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? placeName = freezed,
  }) {
    return _then(_CommonLatLng(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommonLatLng implements _CommonLatLng {
  _$_CommonLatLng({this.lat, this.lng, this.placeName});

  factory _$_CommonLatLng.fromJson(Map<String, dynamic> json) =>
      _$_$_CommonLatLngFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final String? placeName;

  @override
  String toString() {
    return 'CommonLatLng(lat: $lat, lng: $lng, placeName: $placeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommonLatLng &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)) &&
            (identical(other.placeName, placeName) ||
                const DeepCollectionEquality()
                    .equals(other.placeName, placeName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(placeName);

  @JsonKey(ignore: true)
  @override
  _$CommonLatLngCopyWith<_CommonLatLng> get copyWith =>
      __$CommonLatLngCopyWithImpl<_CommonLatLng>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommonLatLngToJson(this);
  }
}

abstract class _CommonLatLng implements CommonLatLng {
  factory _CommonLatLng({double? lat, double? lng, String? placeName}) =
      _$_CommonLatLng;

  factory _CommonLatLng.fromJson(Map<String, dynamic> json) =
      _$_CommonLatLng.fromJson;

  @override
  double? get lat => throw _privateConstructorUsedError;
  @override
  double? get lng => throw _privateConstructorUsedError;
  @override
  String? get placeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommonLatLngCopyWith<_CommonLatLng> get copyWith =>
      throw _privateConstructorUsedError;
}
