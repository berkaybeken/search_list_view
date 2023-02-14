import 'package:bloc/bloc.dart';
import 'package:etiya_case/data/nbaapi/model/nba_team.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/nbaapi/nba_api.dart';

part 'team_list_event.dart';
part 'team_list_state.dart';
part 'team_list_bloc.freezed.dart';

class TeamListBloc extends Bloc<TeamListEvent, TeamListState> {
  TeamListBloc() : super(const TeamListState(status: TeamListStatus.initial)) {
    on<TeamsLoaded>(_filterWord);
    on<TeamsFetched>(_fetchResponse);
  }

  NbaApi data = NbaApi();
  List<NbaTeam> myResponse = [];

  void _fetchResponse(TeamsFetched event, Emitter<TeamListState> emit) async {
    emit(
      state.copyWith(
        status: TeamListStatus.loading,
      ),
    );
    try {
      myResponse = await data.fetchTeams();
      emit(
        state.copyWith(
          status: TeamListStatus.success,
          teams: myResponse,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: TeamListStatus.error,
        ),
      );
    }
  }

  void _filterWord(TeamsLoaded event, Emitter<TeamListState> emit) {
    List<NbaTeam> results = [];
    if (event.keyword == null) {
      results = myResponse;
      emit(
        state.copyWith(teams: results),
      );
    } else {
      results = myResponse
          .where(
            (team) => team.name!.toLowerCase().trim().startsWith(
                  event.keyword!.toLowerCase().trim(),
                ),
          )
          .toList();
      emit(
        state.copyWith(teams: results),
      );
    }
  }
}
