// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonBanner _$CommonBannerFromJson(Map<String, dynamic> json) {
  return _CommonBanner.fromJson(json);
}

/// @nodoc
class _$CommonBannerTearOff {
  const _$CommonBannerTearOff();

  _CommonBanner call(
      {String? path, int? is_active, String? link, int? id, String? title}) {
    return _CommonBanner(
      path: path,
      is_active: is_active,
      link: link,
      id: id,
      title: title,
    );
  }

  CommonBanner fromJson(Map<String, Object> json) {
    return CommonBanner.fromJson(json);
  }
}

/// @nodoc
const $CommonBanner = _$CommonBannerTearOff();

/// @nodoc
mixin _$CommonBanner {
  String? get path => throw _privateConstructorUsedError;
  int? get is_active => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonBannerCopyWith<CommonBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonBannerCopyWith<$Res> {
  factory $CommonBannerCopyWith(
          CommonBanner value, $Res Function(CommonBanner) then) =
      _$CommonBannerCopyWithImpl<$Res>;
  $Res call(
      {String? path, int? is_active, String? link, int? id, String? title});
}

/// @nodoc
class _$CommonBannerCopyWithImpl<$Res> implements $CommonBannerCopyWith<$Res> {
  _$CommonBannerCopyWithImpl(this._value, this._then);

  final CommonBanner _value;
  // ignore: unused_field
  final $Res Function(CommonBanner) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? is_active = freezed,
    Object? link = freezed,
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      is_active: is_active == freezed
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as int?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommonBannerCopyWith<$Res>
    implements $CommonBannerCopyWith<$Res> {
  factory _$CommonBannerCopyWith(
          _CommonBanner value, $Res Function(_CommonBanner) then) =
      __$CommonBannerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? path, int? is_active, String? link, int? id, String? title});
}

/// @nodoc
class __$CommonBannerCopyWithImpl<$Res> extends _$CommonBannerCopyWithImpl<$Res>
    implements _$CommonBannerCopyWith<$Res> {
  __$CommonBannerCopyWithImpl(
      _CommonBanner _value, $Res Function(_CommonBanner) _then)
      : super(_value, (v) => _then(v as _CommonBanner));

  @override
  _CommonBanner get _value => super._value as _CommonBanner;

  @override
  $Res call({
    Object? path = freezed,
    Object? is_active = freezed,
    Object? link = freezed,
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_CommonBanner(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      is_active: is_active == freezed
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as int?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommonBanner implements _CommonBanner {
  _$_CommonBanner({this.path, this.is_active, this.link, this.id, this.title});

  factory _$_CommonBanner.fromJson(Map<String, dynamic> json) =>
      _$_$_CommonBannerFromJson(json);

  @override
  final String? path;
  @override
  final int? is_active;
  @override
  final String? link;
  @override
  final int? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'CommonBanner(path: $path, is_active: $is_active, link: $link, id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommonBanner &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.is_active, is_active) ||
                const DeepCollectionEquality()
                    .equals(other.is_active, is_active)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(is_active) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$CommonBannerCopyWith<_CommonBanner> get copyWith =>
      __$CommonBannerCopyWithImpl<_CommonBanner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommonBannerToJson(this);
  }
}

abstract class _CommonBanner implements CommonBanner {
  factory _CommonBanner(
      {String? path,
      int? is_active,
      String? link,
      int? id,
      String? title}) = _$_CommonBanner;

  factory _CommonBanner.fromJson(Map<String, dynamic> json) =
      _$_CommonBanner.fromJson;

  @override
  String? get path => throw _privateConstructorUsedError;
  @override
  int? get is_active => throw _privateConstructorUsedError;
  @override
  String? get link => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommonBannerCopyWith<_CommonBanner> get copyWith =>
      throw _privateConstructorUsedError;
}
