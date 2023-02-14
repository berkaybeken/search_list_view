part of 'team_list_bloc.dart';

@freezed
class TeamListEvent with _$TeamListEvent {
  const factory TeamListEvent.load(String? keyword) = TeamsLoaded;
  const factory TeamListEvent.fetchTeams() = TeamsFetched;
}
