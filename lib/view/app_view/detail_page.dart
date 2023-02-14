import 'package:flutter/material.dart';

import '../../data/nbaapi/model/nba_team.dart';
import '../widgets/horizontal_gap.dart';

class DetailPage extends StatelessWidget {
  final NbaTeam? response;
  const DetailPage({
    this.response,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(response?.name.toString() ?? " "),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 2,
                child: Image.network(
                  response?.logo.toString() ??
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT4UBOrEM1lXBxMVw3ASGiqyvMAuBKvIyjfl_2ySBt9dYk69u0NhtoFwguYyT9rmjKk38&usqp=CAU",
                ),
              ),
              const HorizontalGap(),
              Text(
                "Team Name: ${response?.name.toString() ?? " "}",
              ),
              const HorizontalGap(),
              Text(
                "Nickname: ${response?.nickname.toString() ?? " "}",
              ),
              const HorizontalGap(),
              Text(
                "City: ${response?.city.toString() ?? " "} ",
              ),
              const HorizontalGap(),
              Text(
                "Code: ${response?.code.toString() ?? " "} ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
