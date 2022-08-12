// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loading_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoadingStateTearOff {
  const _$LoadingStateTearOff();

  LoadingStateInit initial({bool isLoading = true}) {
    return LoadingStateInit(
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $LoadingState = _$LoadingStateTearOff();

/// @nodoc
mixin _$LoadingState {
  bool get isLoading => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingStateInit value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingStateInit value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingStateInit value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadingStateCopyWith<LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(this._value, this._then);

  final LoadingState _value;
  // ignore: unused_field
  final $Res Function(LoadingState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $LoadingStateInitCopyWith<$Res>
    implements $LoadingStateCopyWith<$Res> {
  factory $LoadingStateInitCopyWith(
          LoadingStateInit value, $Res Function(LoadingStateInit) then) =
      _$LoadingStateInitCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class _$LoadingStateInitCopyWithImpl<$Res>
    extends _$LoadingStateCopyWithImpl<$Res>
    implements $LoadingStateInitCopyWith<$Res> {
  _$LoadingStateInitCopyWithImpl(
      LoadingStateInit _value, $Res Function(LoadingStateInit) _then)
      : super(_value, (v) => _then(v as LoadingStateInit));

  @override
  LoadingStateInit get _value => super._value as LoadingStateInit;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(LoadingStateInit(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingStateInit implements LoadingStateInit {
  const _$LoadingStateInit({this.isLoading = true});

  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'LoadingState.initial(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingStateInit &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  $LoadingStateInitCopyWith<LoadingStateInit> get copyWith =>
      _$LoadingStateInitCopyWithImpl<LoadingStateInit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
  }) {
    return initial(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
  }) {
    return initial?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingStateInit value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingStateInit value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingStateInit value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoadingStateInit implements LoadingState {
  const factory LoadingStateInit({bool isLoading}) = _$LoadingStateInit;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $LoadingStateInitCopyWith<LoadingStateInit> get copyWith =>
      throw _privateConstructorUsedError;
}
