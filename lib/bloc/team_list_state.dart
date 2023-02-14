part of 'team_list_bloc.dart';

enum TeamListStatus {
  initial,
  loading,
  success,
  error,
}

@freezed
class TeamListState with _$TeamListState {
  const factory TeamListState({
    required TeamListStatus status,
    List<NbaTeam>? teams,
  }) = _TeamListState;
}
