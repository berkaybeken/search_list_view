import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'model/nba_team.dart';
import 'model/nba_teams_response.dart';

class HttpException implements Exception {}

class ParsingException implements Exception {}

class NbaApi {
  final Dio _dioClient;
  final String _url = "/teams";
  String apiKey = "f6b21c82f2mshdc2b3dadef87a09p1efa00jsn402f0ed10dda";

  NbaApi({Dio? dioClient})
      : _dioClient = dioClient ??
            Dio(
              BaseOptions(
                baseUrl: "https://api-nba-v1.p.rapidapi.com",
                headers: {
                  "x-rapidapi-key":
                      "f6b21c82f2mshdc2b3dadef87a09p1efa00jsn402f0ed10dda",
                  "x-rapidapi-host": "api-nba-v1.p.rapidapi.com",
                },
              ),
            )
          ..interceptors.add(
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
            ),
          );

  Future<List<NbaTeam>> fetchTeams() async {
    try {
      final response = await _dioClient.get<Map<String, dynamic>>(
        _url,
      );
      if (response.data != null) {
        NbaTeamsResponse nbaTeamsResponse =
            NbaTeamsResponse.fromJson(response.data!);
        return nbaTeamsResponse.response!;
      }
    } catch (e) {
      if (e is DioError) {
        throw HttpException();
      }
    }
    throw ParsingException();
  }
}
