// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonImage _$CommonImageFromJson(Map<String, dynamic> json) {
  return _CommonImage.fromJson(json);
}

/// @nodoc
class _$CommonImageTearOff {
  const _$CommonImageTearOff();

  _CommonImage call(
      {int? size, String? name, int? id, String? mimeType, String? url}) {
    return _CommonImage(
      size: size,
      name: name,
      id: id,
      mimeType: mimeType,
      url: url,
    );
  }

  CommonImage fromJson(Map<String, Object> json) {
    return CommonImage.fromJson(json);
  }
}

/// @nodoc
const $CommonImage = _$CommonImageTearOff();

/// @nodoc
mixin _$CommonImage {
  int? get size => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonImageCopyWith<CommonImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonImageCopyWith<$Res> {
  factory $CommonImageCopyWith(
          CommonImage value, $Res Function(CommonImage) then) =
      _$CommonImageCopyWithImpl<$Res>;
  $Res call({int? size, String? name, int? id, String? mimeType, String? url});
}

/// @nodoc
class _$CommonImageCopyWithImpl<$Res> implements $CommonImageCopyWith<$Res> {
  _$CommonImageCopyWithImpl(this._value, this._then);

  final CommonImage _value;
  // ignore: unused_field
  final $Res Function(CommonImage) _then;

  @override
  $Res call({
    Object? size = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? mimeType = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mimeType: mimeType == freezed
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommonImageCopyWith<$Res>
    implements $CommonImageCopyWith<$Res> {
  factory _$CommonImageCopyWith(
          _CommonImage value, $Res Function(_CommonImage) then) =
      __$CommonImageCopyWithImpl<$Res>;
  @override
  $Res call({int? size, String? name, int? id, String? mimeType, String? url});
}

/// @nodoc
class __$CommonImageCopyWithImpl<$Res> extends _$CommonImageCopyWithImpl<$Res>
    implements _$CommonImageCopyWith<$Res> {
  __$CommonImageCopyWithImpl(
      _CommonImage _value, $Res Function(_CommonImage) _then)
      : super(_value, (v) => _then(v as _CommonImage));

  @override
  _CommonImage get _value => super._value as _CommonImage;

  @override
  $Res call({
    Object? size = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? mimeType = freezed,
    Object? url = freezed,
  }) {
    return _then(_CommonImage(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mimeType: mimeType == freezed
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommonImage implements _CommonImage {
  _$_CommonImage({this.size, this.name, this.id, this.mimeType, this.url});

  factory _$_CommonImage.fromJson(Map<String, dynamic> json) =>
      _$_$_CommonImageFromJson(json);

  @override
  final int? size;
  @override
  final String? name;
  @override
  final int? id;
  @override
  final String? mimeType;
  @override
  final String? url;

  @override
  String toString() {
    return 'CommonImage(size: $size, name: $name, id: $id, mimeType: $mimeType, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommonImage &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mimeType, mimeType) ||
                const DeepCollectionEquality()
                    .equals(other.mimeType, mimeType)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mimeType) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$CommonImageCopyWith<_CommonImage> get copyWith =>
      __$CommonImageCopyWithImpl<_CommonImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommonImageToJson(this);
  }
}

abstract class _CommonImage implements CommonImage {
  factory _CommonImage(
      {int? size,
      String? name,
      int? id,
      String? mimeType,
      String? url}) = _$_CommonImage;

  factory _CommonImage.fromJson(Map<String, dynamic> json) =
      _$_CommonImage.fromJson;

  @override
  int? get size => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get mimeType => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommonImageCopyWith<_CommonImage> get copyWith =>
      throw _privateConstructorUsedError;
}
