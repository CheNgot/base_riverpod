// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_load_more.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestLoadMore _$RequestLoadMoreFromJson(Map<String, dynamic> json) {
  return _RequestLoadMore.fromJson(json);
}

/// @nodoc
class _$RequestLoadMoreTearOff {
  const _$RequestLoadMoreTearOff();

  _RequestLoadMore call({int? limit, int? page}) {
    return _RequestLoadMore(
      limit: limit,
      page: page,
    );
  }

  RequestLoadMore fromJson(Map<String, Object> json) {
    return RequestLoadMore.fromJson(json);
  }
}

/// @nodoc
const $RequestLoadMore = _$RequestLoadMoreTearOff();

/// @nodoc
mixin _$RequestLoadMore {
  int? get limit => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestLoadMoreCopyWith<RequestLoadMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestLoadMoreCopyWith<$Res> {
  factory $RequestLoadMoreCopyWith(
          RequestLoadMore value, $Res Function(RequestLoadMore) then) =
      _$RequestLoadMoreCopyWithImpl<$Res>;
  $Res call({int? limit, int? page});
}

/// @nodoc
class _$RequestLoadMoreCopyWithImpl<$Res>
    implements $RequestLoadMoreCopyWith<$Res> {
  _$RequestLoadMoreCopyWithImpl(this._value, this._then);

  final RequestLoadMore _value;
  // ignore: unused_field
  final $Res Function(RequestLoadMore) _then;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RequestLoadMoreCopyWith<$Res>
    implements $RequestLoadMoreCopyWith<$Res> {
  factory _$RequestLoadMoreCopyWith(
          _RequestLoadMore value, $Res Function(_RequestLoadMore) then) =
      __$RequestLoadMoreCopyWithImpl<$Res>;
  @override
  $Res call({int? limit, int? page});
}

/// @nodoc
class __$RequestLoadMoreCopyWithImpl<$Res>
    extends _$RequestLoadMoreCopyWithImpl<$Res>
    implements _$RequestLoadMoreCopyWith<$Res> {
  __$RequestLoadMoreCopyWithImpl(
      _RequestLoadMore _value, $Res Function(_RequestLoadMore) _then)
      : super(_value, (v) => _then(v as _RequestLoadMore));

  @override
  _RequestLoadMore get _value => super._value as _RequestLoadMore;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
  }) {
    return _then(_RequestLoadMore(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RequestLoadMore
    with DiagnosticableTreeMixin
    implements _RequestLoadMore {
  _$_RequestLoadMore({this.limit, this.page});

  factory _$_RequestLoadMore.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestLoadMoreFromJson(json);

  @override
  final int? limit;
  @override
  final int? page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestLoadMore(limit: $limit, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestLoadMore'))
      ..add(DiagnosticsProperty('limit', limit))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestLoadMore &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$RequestLoadMoreCopyWith<_RequestLoadMore> get copyWith =>
      __$RequestLoadMoreCopyWithImpl<_RequestLoadMore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestLoadMoreToJson(this);
  }
}

abstract class _RequestLoadMore implements RequestLoadMore {
  factory _RequestLoadMore({int? limit, int? page}) = _$_RequestLoadMore;

  factory _RequestLoadMore.fromJson(Map<String, dynamic> json) =
      _$_RequestLoadMore.fromJson;

  @override
  int? get limit => throw _privateConstructorUsedError;
  @override
  int? get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestLoadMoreCopyWith<_RequestLoadMore> get copyWith =>
      throw _privateConstructorUsedError;
}
