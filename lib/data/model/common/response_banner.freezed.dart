// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'response_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseBanner _$ResponseBannerFromJson(Map<String, dynamic> json) {
  return _ResponseBanner.fromJson(json);
}

/// @nodoc
class _$ResponseBannerTearOff {
  const _$ResponseBannerTearOff();

  _ResponseBanner call(
      {int? id,
      String? type,
      String? descriptions,
      int? isActive,
      List<Image>? images,
      List<Image>? videos,
      DateTime? closedDate,
      Site? site}) {
    return _ResponseBanner(
      id: id,
      type: type,
      descriptions: descriptions,
      isActive: isActive,
      images: images,
      videos: videos,
      closedDate: closedDate,
      site: site,
    );
  }

  ResponseBanner fromJson(Map<String, Object> json) {
    return ResponseBanner.fromJson(json);
  }
}

/// @nodoc
const $ResponseBanner = _$ResponseBannerTearOff();

/// @nodoc
mixin _$ResponseBanner {
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get descriptions => throw _privateConstructorUsedError;
  int? get isActive => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;
  List<Image>? get videos => throw _privateConstructorUsedError;
  DateTime? get closedDate => throw _privateConstructorUsedError;
  Site? get site => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBannerCopyWith<ResponseBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBannerCopyWith<$Res> {
  factory $ResponseBannerCopyWith(
          ResponseBanner value, $Res Function(ResponseBanner) then) =
      _$ResponseBannerCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? type,
      String? descriptions,
      int? isActive,
      List<Image>? images,
      List<Image>? videos,
      DateTime? closedDate,
      Site? site});

  $SiteCopyWith<$Res>? get site;
}

/// @nodoc
class _$ResponseBannerCopyWithImpl<$Res>
    implements $ResponseBannerCopyWith<$Res> {
  _$ResponseBannerCopyWithImpl(this._value, this._then);

  final ResponseBanner _value;
  // ignore: unused_field
  final $Res Function(ResponseBanner) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? descriptions = freezed,
    Object? isActive = freezed,
    Object? images = freezed,
    Object? videos = freezed,
    Object? closedDate = freezed,
    Object? site = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptions: descriptions == freezed
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      videos: videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      closedDate: closedDate == freezed
          ? _value.closedDate
          : closedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as Site?,
    ));
  }

  @override
  $SiteCopyWith<$Res>? get site {
    if (_value.site == null) {
      return null;
    }

    return $SiteCopyWith<$Res>(_value.site!, (value) {
      return _then(_value.copyWith(site: value));
    });
  }
}

/// @nodoc
abstract class _$ResponseBannerCopyWith<$Res>
    implements $ResponseBannerCopyWith<$Res> {
  factory _$ResponseBannerCopyWith(
          _ResponseBanner value, $Res Function(_ResponseBanner) then) =
      __$ResponseBannerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? type,
      String? descriptions,
      int? isActive,
      List<Image>? images,
      List<Image>? videos,
      DateTime? closedDate,
      Site? site});

  @override
  $SiteCopyWith<$Res>? get site;
}

/// @nodoc
class __$ResponseBannerCopyWithImpl<$Res>
    extends _$ResponseBannerCopyWithImpl<$Res>
    implements _$ResponseBannerCopyWith<$Res> {
  __$ResponseBannerCopyWithImpl(
      _ResponseBanner _value, $Res Function(_ResponseBanner) _then)
      : super(_value, (v) => _then(v as _ResponseBanner));

  @override
  _ResponseBanner get _value => super._value as _ResponseBanner;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? descriptions = freezed,
    Object? isActive = freezed,
    Object? images = freezed,
    Object? videos = freezed,
    Object? closedDate = freezed,
    Object? site = freezed,
  }) {
    return _then(_ResponseBanner(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptions: descriptions == freezed
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      videos: videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      closedDate: closedDate == freezed
          ? _value.closedDate
          : closedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as Site?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ResponseBanner implements _ResponseBanner {
  const _$_ResponseBanner(
      {this.id,
      this.type,
      this.descriptions,
      this.isActive,
      this.images,
      this.videos,
      this.closedDate,
      this.site});

  factory _$_ResponseBanner.fromJson(Map<String, dynamic> json) =>
      _$_$_ResponseBannerFromJson(json);

  @override
  final int? id;
  @override
  final String? type;
  @override
  final String? descriptions;
  @override
  final int? isActive;
  @override
  final List<Image>? images;
  @override
  final List<Image>? videos;
  @override
  final DateTime? closedDate;
  @override
  final Site? site;

  @override
  String toString() {
    return 'ResponseBanner(id: $id, type: $type, descriptions: $descriptions, isActive: $isActive, images: $images, videos: $videos, closedDate: $closedDate, site: $site)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResponseBanner &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.descriptions, descriptions) ||
                const DeepCollectionEquality()
                    .equals(other.descriptions, descriptions)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)) &&
            (identical(other.closedDate, closedDate) ||
                const DeepCollectionEquality()
                    .equals(other.closedDate, closedDate)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(descriptions) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(videos) ^
      const DeepCollectionEquality().hash(closedDate) ^
      const DeepCollectionEquality().hash(site);

  @JsonKey(ignore: true)
  @override
  _$ResponseBannerCopyWith<_ResponseBanner> get copyWith =>
      __$ResponseBannerCopyWithImpl<_ResponseBanner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResponseBannerToJson(this);
  }
}

abstract class _ResponseBanner implements ResponseBanner {
  const factory _ResponseBanner(
      {int? id,
      String? type,
      String? descriptions,
      int? isActive,
      List<Image>? images,
      List<Image>? videos,
      DateTime? closedDate,
      Site? site}) = _$_ResponseBanner;

  factory _ResponseBanner.fromJson(Map<String, dynamic> json) =
      _$_ResponseBanner.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get descriptions => throw _privateConstructorUsedError;
  @override
  int? get isActive => throw _privateConstructorUsedError;
  @override
  List<Image>? get images => throw _privateConstructorUsedError;
  @override
  List<Image>? get videos => throw _privateConstructorUsedError;
  @override
  DateTime? get closedDate => throw _privateConstructorUsedError;
  @override
  Site? get site => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResponseBannerCopyWith<_ResponseBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
class _$ImageTearOff {
  const _$ImageTearOff();

  _Image call({String? url, String? name, String? thumbnail_url}) {
    return _Image(
      url: url,
      name: name,
      thumbnail_url: thumbnail_url,
    );
  }

  Image fromJson(Map<String, Object> json) {
    return Image.fromJson(json);
  }
}

/// @nodoc
const $Image = _$ImageTearOff();

/// @nodoc
mixin _$Image {
  String? get url => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get thumbnail_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res>;
  $Res call({String? url, String? name, String? thumbnail_url});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res> implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  final Image _value;
  // ignore: unused_field
  final $Res Function(Image) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? name = freezed,
    Object? thumbnail_url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail_url: thumbnail_url == freezed
          ? _value.thumbnail_url
          : thumbnail_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$ImageCopyWith(_Image value, $Res Function(_Image) then) =
      __$ImageCopyWithImpl<$Res>;
  @override
  $Res call({String? url, String? name, String? thumbnail_url});
}

/// @nodoc
class __$ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res>
    implements _$ImageCopyWith<$Res> {
  __$ImageCopyWithImpl(_Image _value, $Res Function(_Image) _then)
      : super(_value, (v) => _then(v as _Image));

  @override
  _Image get _value => super._value as _Image;

  @override
  $Res call({
    Object? url = freezed,
    Object? name = freezed,
    Object? thumbnail_url = freezed,
  }) {
    return _then(_Image(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail_url: thumbnail_url == freezed
          ? _value.thumbnail_url
          : thumbnail_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Image implements _Image {
  const _$_Image({this.url, this.name, this.thumbnail_url});

  factory _$_Image.fromJson(Map<String, dynamic> json) =>
      _$_$_ImageFromJson(json);

  @override
  final String? url;
  @override
  final String? name;
  @override
  final String? thumbnail_url;

  @override
  String toString() {
    return 'Image(url: $url, name: $name, thumbnail_url: $thumbnail_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Image &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.thumbnail_url, thumbnail_url) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail_url, thumbnail_url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(thumbnail_url);

  @JsonKey(ignore: true)
  @override
  _$ImageCopyWith<_Image> get copyWith =>
      __$ImageCopyWithImpl<_Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImageToJson(this);
  }
}

abstract class _Image implements Image {
  const factory _Image({String? url, String? name, String? thumbnail_url}) =
      _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get thumbnail_url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImageCopyWith<_Image> get copyWith => throw _privateConstructorUsedError;
}

Site _$SiteFromJson(Map<String, dynamic> json) {
  return _Site.fromJson(json);
}

/// @nodoc
class _$SiteTearOff {
  const _$SiteTearOff();

  _Site call(
      {int? id, String? name, DateTime? createdAt, DateTime? updatedAt}) {
    return _Site(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Site fromJson(Map<String, Object> json) {
    return Site.fromJson(json);
  }
}

/// @nodoc
const $Site = _$SiteTearOff();

/// @nodoc
mixin _$Site {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SiteCopyWith<Site> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteCopyWith<$Res> {
  factory $SiteCopyWith(Site value, $Res Function(Site) then) =
      _$SiteCopyWithImpl<$Res>;
  $Res call({int? id, String? name, DateTime? createdAt, DateTime? updatedAt});
}

/// @nodoc
class _$SiteCopyWithImpl<$Res> implements $SiteCopyWith<$Res> {
  _$SiteCopyWithImpl(this._value, this._then);

  final Site _value;
  // ignore: unused_field
  final $Res Function(Site) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$SiteCopyWith<$Res> implements $SiteCopyWith<$Res> {
  factory _$SiteCopyWith(_Site value, $Res Function(_Site) then) =
      __$SiteCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, DateTime? createdAt, DateTime? updatedAt});
}

/// @nodoc
class __$SiteCopyWithImpl<$Res> extends _$SiteCopyWithImpl<$Res>
    implements _$SiteCopyWith<$Res> {
  __$SiteCopyWithImpl(_Site _value, $Res Function(_Site) _then)
      : super(_value, (v) => _then(v as _Site));

  @override
  _Site get _value => super._value as _Site;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Site(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Site implements _Site {
  const _$_Site({this.id, this.name, this.createdAt, this.updatedAt});

  factory _$_Site.fromJson(Map<String, dynamic> json) =>
      _$_$_SiteFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Site(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Site &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$SiteCopyWith<_Site> get copyWith =>
      __$SiteCopyWithImpl<_Site>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SiteToJson(this);
  }
}

abstract class _Site implements Site {
  const factory _Site(
      {int? id,
      String? name,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_Site;

  factory _Site.fromJson(Map<String, dynamic> json) = _$_Site.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SiteCopyWith<_Site> get copyWith => throw _privateConstructorUsedError;
}
