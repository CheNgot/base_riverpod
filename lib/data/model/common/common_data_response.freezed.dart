// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonDataResponse _$CommonDataResponseFromJson(Map<String, dynamic> json) {
  return _CommonDataResponse.fromJson(json);
}

/// @nodoc
class _$CommonDataResponseTearOff {
  const _$CommonDataResponseTearOff();

  _CommonDataResponse call(
      {String? name, int? id, String? type, String? title, String? key}) {
    return _CommonDataResponse(
      name: name,
      id: id,
      type: type,
      title: title,
      key: key,
    );
  }

  CommonDataResponse fromJson(Map<String, Object> json) {
    return CommonDataResponse.fromJson(json);
  }
}

/// @nodoc
const $CommonDataResponse = _$CommonDataResponseTearOff();

/// @nodoc
mixin _$CommonDataResponse {
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonDataResponseCopyWith<CommonDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonDataResponseCopyWith<$Res> {
  factory $CommonDataResponseCopyWith(
          CommonDataResponse value, $Res Function(CommonDataResponse) then) =
      _$CommonDataResponseCopyWithImpl<$Res>;
  $Res call({String? name, int? id, String? type, String? title, String? key});
}

/// @nodoc
class _$CommonDataResponseCopyWithImpl<$Res>
    implements $CommonDataResponseCopyWith<$Res> {
  _$CommonDataResponseCopyWithImpl(this._value, this._then);

  final CommonDataResponse _value;
  // ignore: unused_field
  final $Res Function(CommonDataResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? key = freezed,
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommonDataResponseCopyWith<$Res>
    implements $CommonDataResponseCopyWith<$Res> {
  factory _$CommonDataResponseCopyWith(
          _CommonDataResponse value, $Res Function(_CommonDataResponse) then) =
      __$CommonDataResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? name, int? id, String? type, String? title, String? key});
}

/// @nodoc
class __$CommonDataResponseCopyWithImpl<$Res>
    extends _$CommonDataResponseCopyWithImpl<$Res>
    implements _$CommonDataResponseCopyWith<$Res> {
  __$CommonDataResponseCopyWithImpl(
      _CommonDataResponse _value, $Res Function(_CommonDataResponse) _then)
      : super(_value, (v) => _then(v as _CommonDataResponse));

  @override
  _CommonDataResponse get _value => super._value as _CommonDataResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? key = freezed,
  }) {
    return _then(_CommonDataResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$_CommonDataResponse implements _CommonDataResponse {
  _$_CommonDataResponse({this.name, this.id, this.type, this.title, this.key});

  factory _$_CommonDataResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CommonDataResponseFromJson(json);

  @override
  final String? name;
  @override
  final int? id;
  @override
  final String? type;
  @override
  final String? title;
  @override
  final String? key;

  @override
  String toString() {
    return 'CommonDataResponse(name: $name, id: $id, type: $type, title: $title, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommonDataResponse &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  _$CommonDataResponseCopyWith<_CommonDataResponse> get copyWith =>
      __$CommonDataResponseCopyWithImpl<_CommonDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommonDataResponseToJson(this);
  }
}

abstract class _CommonDataResponse implements CommonDataResponse {
  factory _CommonDataResponse(
      {String? name,
      int? id,
      String? type,
      String? title,
      String? key}) = _$_CommonDataResponse;

  factory _CommonDataResponse.fromJson(Map<String, dynamic> json) =
      _$_CommonDataResponse.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommonDataResponseCopyWith<_CommonDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
