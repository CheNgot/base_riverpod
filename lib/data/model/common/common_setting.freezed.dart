// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonSetting _$CommonSettingFromJson(Map<String, dynamic> json) {
  return _CommonSetting.fromJson(json);
}

/// @nodoc
class _$CommonSettingTearOff {
  const _$CommonSettingTearOff();

  _CommonSetting call(
      {String? name, String? type, String? value, String? key}) {
    return _CommonSetting(
      name: name,
      type: type,
      value: value,
      key: key,
    );
  }

  CommonSetting fromJson(Map<String, Object> json) {
    return CommonSetting.fromJson(json);
  }
}

/// @nodoc
const $CommonSetting = _$CommonSettingTearOff();

/// @nodoc
mixin _$CommonSetting {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonSettingCopyWith<CommonSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonSettingCopyWith<$Res> {
  factory $CommonSettingCopyWith(
          CommonSetting value, $Res Function(CommonSetting) then) =
      _$CommonSettingCopyWithImpl<$Res>;
  $Res call({String? name, String? type, String? value, String? key});
}

/// @nodoc
class _$CommonSettingCopyWithImpl<$Res>
    implements $CommonSettingCopyWith<$Res> {
  _$CommonSettingCopyWithImpl(this._value, this._then);

  final CommonSetting _value;
  // ignore: unused_field
  final $Res Function(CommonSetting) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? value = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommonSettingCopyWith<$Res>
    implements $CommonSettingCopyWith<$Res> {
  factory _$CommonSettingCopyWith(
          _CommonSetting value, $Res Function(_CommonSetting) then) =
      __$CommonSettingCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? type, String? value, String? key});
}

/// @nodoc
class __$CommonSettingCopyWithImpl<$Res>
    extends _$CommonSettingCopyWithImpl<$Res>
    implements _$CommonSettingCopyWith<$Res> {
  __$CommonSettingCopyWithImpl(
      _CommonSetting _value, $Res Function(_CommonSetting) _then)
      : super(_value, (v) => _then(v as _CommonSetting));

  @override
  _CommonSetting get _value => super._value as _CommonSetting;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? value = freezed,
    Object? key = freezed,
  }) {
    return _then(_CommonSetting(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommonSetting implements _CommonSetting {
  _$_CommonSetting({this.name, this.type, this.value, this.key});

  factory _$_CommonSetting.fromJson(Map<String, dynamic> json) =>
      _$_$_CommonSettingFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? value;
  @override
  final String? key;

  @override
  String toString() {
    return 'CommonSetting(name: $name, type: $type, value: $value, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommonSetting &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  _$CommonSettingCopyWith<_CommonSetting> get copyWith =>
      __$CommonSettingCopyWithImpl<_CommonSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommonSettingToJson(this);
  }
}

abstract class _CommonSetting implements CommonSetting {
  factory _CommonSetting(
      {String? name,
      String? type,
      String? value,
      String? key}) = _$_CommonSetting;

  factory _CommonSetting.fromJson(Map<String, dynamic> json) =
      _$_CommonSetting.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get value => throw _privateConstructorUsedError;
  @override
  String? get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommonSettingCopyWith<_CommonSetting> get copyWith =>
      throw _privateConstructorUsedError;
}
