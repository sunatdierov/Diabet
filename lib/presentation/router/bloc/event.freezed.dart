// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RouterEventTearOff {
  const _$RouterEventTearOff();

  OnPop pop() {
    return const OnPop();
  }

  ToHome toHome() {
    return const ToHome();
  }

  ToFirst toFirst() {
    return const ToFirst();
  }

  ToSecond toSecond() {
    return const ToSecond();
  }

  ToThird toThird() {
    return const ToThird();
  }
}

/// @nodoc
const $RouterEvent = _$RouterEventTearOff();

/// @nodoc
mixin _$RouterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function() toSecond,
    required TResult Function() toThird,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function()? toSecond,
    TResult Function()? toThird,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function()? toSecond,
    TResult Function()? toThird,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToSecond value) toSecond,
    required TResult Function(ToThird value) toThird,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToSecond value)? toSecond,
    TResult Function(ToThird value)? toThird,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToSecond value)? toSecond,
    TResult Function(ToThird value)? toThird,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouterEventCopyWith<$Res> {
  factory $RouterEventCopyWith(
          RouterEvent value, $Res Function(RouterEvent) then) =
      _$RouterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouterEventCopyWithImpl<$Res> implements $RouterEventCopyWith<$Res> {
  _$RouterEventCopyWithImpl(this._value, this._then);

  final RouterEvent _value;
  // ignore: unused_field
  final $Res Function(RouterEvent) _then;
}

/// @nodoc
abstract class $OnPopCopyWith<$Res> {
  factory $OnPopCopyWith(OnPop value, $Res Function(OnPop) then) =
      _$OnPopCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnPopCopyWithImpl<$Res> extends _$RouterEventCopyWithImpl<$Res>
    implements $OnPopCopyWith<$Res> {
  _$OnPopCopyWithImpl(OnPop _value, $Res Function(OnPop) _then)
      : super(_value, (v) => _then(v as OnPop));

  @override
  OnPop get _value => super._value as OnPop;
}

/// @nodoc

class _$OnPop with DiagnosticableTreeMixin implements OnPop {
  const _$OnPop();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterEvent.pop()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RouterEvent.pop'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnPop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function() toSecond,
    required TResult Function() toThird,
  }) {
    return pop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function()? toSecond,
    TResult Function()? toThird,
  }) {
    return pop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function()? toSecond,
    TResult Function()? toThird,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToSecond value) toSecond,
    required TResult Function(ToThird value) toThird,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToSecond value)? toSecond,
    TResult Function(ToThird value)? toThird,
  }) {
    return pop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToSecond value)? toSecond,
    TResult Function(ToThird value)? toThird,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(this);
    }
    return orElse();
  }
}

abstract class OnPop implements RouterEvent {
  const factory OnPop() = _$OnPop;
}

/// @nodoc
abstract class $ToHomeCopyWith<$Res> {
  factory $ToHomeCopyWith(ToHome value, $Res Function(ToHome) then) =
      _$ToHomeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToHomeCopyWithImpl<$Res> extends _$RouterEventCopyWithImpl<$Res>
    implements $ToHomeCopyWith<$Res> {
  _$ToHomeCopyWithImpl(ToHome _value, $Res Function(ToHome) _then)
      : super(_value, (v) => _then(v as ToHome));

  @override
  ToHome get _value => super._value as ToHome;
}

/// @nodoc

class _$ToHome with DiagnosticableTreeMixin implements ToHome {
  const _$ToHome();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterEvent.toHome()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RouterEvent.toHome'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function() toSecond,
    required TResult Function() toThird,
  }) {
    return toHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function()? toSecond,
    TResult Function()? toThird,
  }) {
    return toHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function()? toSecond,
    TResult Function()? toThird,
    required TResult orElse(),
  }) {
    if (toHome != null) {
      return toHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToSecond value) toSecond,
    required TResult Function(ToThird value) toThird,
  }) {
    return toHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToSecond value)? toSecond,
    TResult Function(ToThird value)? toThird,
  }) {
    return toHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToSecond value)? toSecond,
    TResult Function(ToThird value)? toThird,
    required TResult orElse(),
  }) {
    if (toHome != null) {
      return toHome(this);
    }
    return orElse();
  }
}

abstract class ToHome implements RouterEvent {
  const factory ToHome() = _$ToHome;
}

/// @nodoc
abstract class $ToFirstCopyWith<$Res> {
  factory $ToFirstCopyWith(ToFirst value, $Res Function(ToFirst) then) =
      _$ToFirstCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToFirstCopyWithImpl<$Res> extends _$RouterEventCopyWithImpl<$Res>
    implements $ToFirstCopyWith<$Res> {
  _$ToFirstCopyWithImpl(ToFirst _value, $Res Function(ToFirst) _then)
      : super(_value, (v) => _then(v as ToFirst));

  @override
  ToFirst get _value => super._value as ToFirst;
}

/// @nodoc

class _$ToFirst with DiagnosticableTreeMixin implements ToFirst {
  const _$ToFirst();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterEvent.toFirst()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RouterEvent.toFirst'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToFirst);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function() toSecond,
    required TResult Function() toThird,
  }) {
    return toFirst();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function()? toSecond,
    TResult Function()? toThird,
  }) {
    return toFirst?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function()? toSecond,
    TResult Function()? toThird,
    required TResult orElse(),
  }) {
    if (toFirst != null) {
      return toFirst();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToSecond value) toSecond,
    required TResult Function(ToThird value) toThird,
  }) {
    return toFirst(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToSecond value)? toSecond,
    TResult Function(ToThird value)? toThird,
  }) {
    return toFirst?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToSecond value)? toSecond,
    TResult Function(ToThird value)? toThird,
    required TResult orElse(),
  }) {
    if (toFirst != null) {
      return toFirst(this);
    }
    return orElse();
  }
}

abstract class ToFirst implements RouterEvent {
  const factory ToFirst() = _$ToFirst;
}

/// @nodoc
abstract class $ToSecondCopyWith<$Res> {
  factory $ToSecondCopyWith(ToSecond value, $Res Function(ToSecond) then) =
      _$ToSecondCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToSecondCopyWithImpl<$Res> extends _$RouterEventCopyWithImpl<$Res>
    implements $ToSecondCopyWith<$Res> {
  _$ToSecondCopyWithImpl(ToSecond _value, $Res Function(ToSecond) _then)
      : super(_value, (v) => _then(v as ToSecond));

  @override
  ToSecond get _value => super._value as ToSecond;
}

/// @nodoc

class _$ToSecond with DiagnosticableTreeMixin implements ToSecond {
  const _$ToSecond();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterEvent.toSecond()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RouterEvent.toSecond'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToSecond);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function() toSecond,
    required TResult Function() toThird,
  }) {
    return toSecond();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function()? toSecond,
    TResult Function()? toThird,
  }) {
    return toSecond?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function()? toSecond,
    TResult Function()? toThird,
    required TResult orElse(),
  }) {
    if (toSecond != null) {
      return toSecond();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToSecond value) toSecond,
    required TResult Function(ToThird value) toThird,
  }) {
    return toSecond(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToSecond value)? toSecond,
    TResult Function(ToThird value)? toThird,
  }) {
    return toSecond?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToSecond value)? toSecond,
    TResult Function(ToThird value)? toThird,
    required TResult orElse(),
  }) {
    if (toSecond != null) {
      return toSecond(this);
    }
    return orElse();
  }
}

abstract class ToSecond implements RouterEvent {
  const factory ToSecond() = _$ToSecond;
}

/// @nodoc
abstract class $ToThirdCopyWith<$Res> {
  factory $ToThirdCopyWith(ToThird value, $Res Function(ToThird) then) =
      _$ToThirdCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToThirdCopyWithImpl<$Res> extends _$RouterEventCopyWithImpl<$Res>
    implements $ToThirdCopyWith<$Res> {
  _$ToThirdCopyWithImpl(ToThird _value, $Res Function(ToThird) _then)
      : super(_value, (v) => _then(v as ToThird));

  @override
  ToThird get _value => super._value as ToThird;
}

/// @nodoc

class _$ToThird with DiagnosticableTreeMixin implements ToThird {
  const _$ToThird();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterEvent.toThird()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RouterEvent.toThird'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToThird);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function() toSecond,
    required TResult Function() toThird,
  }) {
    return toThird();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function()? toSecond,
    TResult Function()? toThird,
  }) {
    return toThird?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function()? toSecond,
    TResult Function()? toThird,
    required TResult orElse(),
  }) {
    if (toThird != null) {
      return toThird();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToSecond value) toSecond,
    required TResult Function(ToThird value) toThird,
  }) {
    return toThird(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToSecond value)? toSecond,
    TResult Function(ToThird value)? toThird,
  }) {
    return toThird?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToSecond value)? toSecond,
    TResult Function(ToThird value)? toThird,
    required TResult orElse(),
  }) {
    if (toThird != null) {
      return toThird(this);
    }
    return orElse();
  }
}

abstract class ToThird implements RouterEvent {
  const factory ToThird() = _$ToThird;
}
