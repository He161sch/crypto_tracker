// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navbar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavbarModelTearOff {
  const _$NavbarModelTearOff();

  _NavbarModel call({required int currentIndex, required List<dynamic> pages}) {
    return _NavbarModel(
      currentIndex: currentIndex,
      pages: pages,
    );
  }
}

/// @nodoc
const $NavbarModel = _$NavbarModelTearOff();

/// @nodoc
mixin _$NavbarModel {
  int get currentIndex => throw _privateConstructorUsedError;
  List<dynamic> get pages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavbarModelCopyWith<NavbarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavbarModelCopyWith<$Res> {
  factory $NavbarModelCopyWith(
          NavbarModel value, $Res Function(NavbarModel) then) =
      _$NavbarModelCopyWithImpl<$Res>;
  $Res call({int currentIndex, List<dynamic> pages});
}

/// @nodoc
class _$NavbarModelCopyWithImpl<$Res> implements $NavbarModelCopyWith<$Res> {
  _$NavbarModelCopyWithImpl(this._value, this._then);

  final NavbarModel _value;
  // ignore: unused_field
  final $Res Function(NavbarModel) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$NavbarModelCopyWith<$Res>
    implements $NavbarModelCopyWith<$Res> {
  factory _$NavbarModelCopyWith(
          _NavbarModel value, $Res Function(_NavbarModel) then) =
      __$NavbarModelCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex, List<dynamic> pages});
}

/// @nodoc
class __$NavbarModelCopyWithImpl<$Res> extends _$NavbarModelCopyWithImpl<$Res>
    implements _$NavbarModelCopyWith<$Res> {
  __$NavbarModelCopyWithImpl(
      _NavbarModel _value, $Res Function(_NavbarModel) _then)
      : super(_value, (v) => _then(v as _NavbarModel));

  @override
  _NavbarModel get _value => super._value as _NavbarModel;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? pages = freezed,
  }) {
    return _then(_NavbarModel(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_NavbarModel implements _NavbarModel {
  const _$_NavbarModel({required this.currentIndex, required this.pages});

  @override
  final int currentIndex;
  @override
  final List<dynamic> pages;

  @override
  String toString() {
    return 'NavbarModel(currentIndex: $currentIndex, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NavbarModel &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex) &&
            const DeepCollectionEquality().equals(other.pages, pages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentIndex),
      const DeepCollectionEquality().hash(pages));

  @JsonKey(ignore: true)
  @override
  _$NavbarModelCopyWith<_NavbarModel> get copyWith =>
      __$NavbarModelCopyWithImpl<_NavbarModel>(this, _$identity);
}

abstract class _NavbarModel implements NavbarModel {
  const factory _NavbarModel(
      {required int currentIndex,
      required List<dynamic> pages}) = _$_NavbarModel;

  @override
  int get currentIndex;
  @override
  List<dynamic> get pages;
  @override
  @JsonKey(ignore: true)
  _$NavbarModelCopyWith<_NavbarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
