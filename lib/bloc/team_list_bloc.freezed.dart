// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeamListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword) load,
    required TResult Function() fetchTeams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? keyword)? load,
    TResult? Function()? fetchTeams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? load,
    TResult Function()? fetchTeams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TeamsLoaded value) load,
    required TResult Function(TeamsFetched value) fetchTeams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TeamsLoaded value)? load,
    TResult? Function(TeamsFetched value)? fetchTeams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TeamsLoaded value)? load,
    TResult Function(TeamsFetched value)? fetchTeams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamListEventCopyWith<$Res> {
  factory $TeamListEventCopyWith(
          TeamListEvent value, $Res Function(TeamListEvent) then) =
      _$TeamListEventCopyWithImpl<$Res, TeamListEvent>;
}

/// @nodoc
class _$TeamListEventCopyWithImpl<$Res, $Val extends TeamListEvent>
    implements $TeamListEventCopyWith<$Res> {
  _$TeamListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TeamsLoadedCopyWith<$Res> {
  factory _$$TeamsLoadedCopyWith(
          _$TeamsLoaded value, $Res Function(_$TeamsLoaded) then) =
      __$$TeamsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? keyword});
}

/// @nodoc
class __$$TeamsLoadedCopyWithImpl<$Res>
    extends _$TeamListEventCopyWithImpl<$Res, _$TeamsLoaded>
    implements _$$TeamsLoadedCopyWith<$Res> {
  __$$TeamsLoadedCopyWithImpl(
      _$TeamsLoaded _value, $Res Function(_$TeamsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = freezed,
  }) {
    return _then(_$TeamsLoaded(
      freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TeamsLoaded implements TeamsLoaded {
  const _$TeamsLoaded(this.keyword);

  @override
  final String? keyword;

  @override
  String toString() {
    return 'TeamListEvent.load(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamsLoaded &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamsLoadedCopyWith<_$TeamsLoaded> get copyWith =>
      __$$TeamsLoadedCopyWithImpl<_$TeamsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword) load,
    required TResult Function() fetchTeams,
  }) {
    return load(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? keyword)? load,
    TResult? Function()? fetchTeams,
  }) {
    return load?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? load,
    TResult Function()? fetchTeams,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TeamsLoaded value) load,
    required TResult Function(TeamsFetched value) fetchTeams,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TeamsLoaded value)? load,
    TResult? Function(TeamsFetched value)? fetchTeams,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TeamsLoaded value)? load,
    TResult Function(TeamsFetched value)? fetchTeams,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class TeamsLoaded implements TeamListEvent {
  const factory TeamsLoaded(final String? keyword) = _$TeamsLoaded;

  String? get keyword;
  @JsonKey(ignore: true)
  _$$TeamsLoadedCopyWith<_$TeamsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TeamsFetchedCopyWith<$Res> {
  factory _$$TeamsFetchedCopyWith(
          _$TeamsFetched value, $Res Function(_$TeamsFetched) then) =
      __$$TeamsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TeamsFetchedCopyWithImpl<$Res>
    extends _$TeamListEventCopyWithImpl<$Res, _$TeamsFetched>
    implements _$$TeamsFetchedCopyWith<$Res> {
  __$$TeamsFetchedCopyWithImpl(
      _$TeamsFetched _value, $Res Function(_$TeamsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TeamsFetched implements TeamsFetched {
  const _$TeamsFetched();

  @override
  String toString() {
    return 'TeamListEvent.fetchTeams()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TeamsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword) load,
    required TResult Function() fetchTeams,
  }) {
    return fetchTeams();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? keyword)? load,
    TResult? Function()? fetchTeams,
  }) {
    return fetchTeams?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? load,
    TResult Function()? fetchTeams,
    required TResult orElse(),
  }) {
    if (fetchTeams != null) {
      return fetchTeams();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TeamsLoaded value) load,
    required TResult Function(TeamsFetched value) fetchTeams,
  }) {
    return fetchTeams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TeamsLoaded value)? load,
    TResult? Function(TeamsFetched value)? fetchTeams,
  }) {
    return fetchTeams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TeamsLoaded value)? load,
    TResult Function(TeamsFetched value)? fetchTeams,
    required TResult orElse(),
  }) {
    if (fetchTeams != null) {
      return fetchTeams(this);
    }
    return orElse();
  }
}

abstract class TeamsFetched implements TeamListEvent {
  const factory TeamsFetched() = _$TeamsFetched;
}

/// @nodoc
mixin _$TeamListState {
  TeamListStatus get status => throw _privateConstructorUsedError;
  List<NbaTeam>? get teams => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamListStateCopyWith<TeamListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamListStateCopyWith<$Res> {
  factory $TeamListStateCopyWith(
          TeamListState value, $Res Function(TeamListState) then) =
      _$TeamListStateCopyWithImpl<$Res, TeamListState>;
  @useResult
  $Res call({TeamListStatus status, List<NbaTeam>? teams});
}

/// @nodoc
class _$TeamListStateCopyWithImpl<$Res, $Val extends TeamListState>
    implements $TeamListStateCopyWith<$Res> {
  _$TeamListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? teams = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TeamListStatus,
      teams: freezed == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<NbaTeam>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeamListStateCopyWith<$Res>
    implements $TeamListStateCopyWith<$Res> {
  factory _$$_TeamListStateCopyWith(
          _$_TeamListState value, $Res Function(_$_TeamListState) then) =
      __$$_TeamListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TeamListStatus status, List<NbaTeam>? teams});
}

/// @nodoc
class __$$_TeamListStateCopyWithImpl<$Res>
    extends _$TeamListStateCopyWithImpl<$Res, _$_TeamListState>
    implements _$$_TeamListStateCopyWith<$Res> {
  __$$_TeamListStateCopyWithImpl(
      _$_TeamListState _value, $Res Function(_$_TeamListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? teams = freezed,
  }) {
    return _then(_$_TeamListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TeamListStatus,
      teams: freezed == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<NbaTeam>?,
    ));
  }
}

/// @nodoc

class _$_TeamListState implements _TeamListState {
  const _$_TeamListState({required this.status, final List<NbaTeam>? teams})
      : _teams = teams;

  @override
  final TeamListStatus status;
  final List<NbaTeam>? _teams;
  @override
  List<NbaTeam>? get teams {
    final value = _teams;
    if (value == null) return null;
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TeamListState(status: $status, teams: $teams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeamListState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._teams, _teams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_teams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeamListStateCopyWith<_$_TeamListState> get copyWith =>
      __$$_TeamListStateCopyWithImpl<_$_TeamListState>(this, _$identity);
}

abstract class _TeamListState implements TeamListState {
  const factory _TeamListState(
      {required final TeamListStatus status,
      final List<NbaTeam>? teams}) = _$_TeamListState;

  @override
  TeamListStatus get status;
  @override
  List<NbaTeam>? get teams;
  @override
  @JsonKey(ignore: true)
  _$$_TeamListStateCopyWith<_$_TeamListState> get copyWith =>
      throw _privateConstructorUsedError;
}
