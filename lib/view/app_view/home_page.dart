import 'package:etiya_case/bloc/team_list_bloc.dart';
import 'package:etiya_case/data/nbaapi/model/nba_team.dart';
import 'package:flutter/material.dart';
import '../../router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NbaTeam> myResponse = [];

  bool isLoading = false;

  late TeamListBloc bloc;

  @override
  void initState() {
    bloc = TeamListBloc();
    bloc.add(
      const TeamListEvent.fetchTeams(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Basketball Teams"),
      ),
      body: BlocProvider<TeamListBloc>(
        create: (context) => bloc,
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return BlocConsumer<TeamListBloc, TeamListState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                ),
                onChanged: (value) => context.read<TeamListBloc>().add(
                      TeamListEvent.load(value),
                    ),
              ),
            ),
            state.status == TeamListStatus.loading
                ? SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height / 10,
                    child: const CircularProgressIndicator())
                : Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.teams?.length ?? 0,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: () => AutoRouter.of(context).push(
                                DetailRoute(response: state.teams?[index])),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    state.teams?[index].name.toString() ?? "",
                                  ),
                                ),
                                Expanded(
                                  child: Image.network(
                                    state.teams?[index].logo.toString() ??
                                        "https://www.logodesignlove.com/images/classic/nba-logo.jpg",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        );
      },
    );
  }
}
