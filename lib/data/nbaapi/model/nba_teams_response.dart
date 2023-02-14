import 'nba_team.dart';

class NbaTeamsResponse {
  String? get;
  List<Map<String, dynamic>>? parameters;
  List<Map<String, dynamic>>? errors;
  int? results;
  List<NbaTeam>? response;

  NbaTeamsResponse(
      {this.get, this.parameters, this.errors, this.results, this.response});

  NbaTeamsResponse.fromJson(Map<String, dynamic> json) {
    get = json['get'];
    if (json['parameters'] != null) {
      parameters = <Map<String, dynamic>>[];
      json['parameters'].forEach((v) {
        parameters!.add(v);
      });
    }
    if (json['errors'] != null) {
      errors = <Map<String, dynamic>>[];
      json['errors'].forEach((v) {
        errors!.add(v);
      });
    }
    results = json['results'];
    if (json['response'] != null) {
      response = <NbaTeam>[];
      json['response'].forEach((v) {
        response!.add(NbaTeam.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['get'] = get;
    if (parameters != null) {
      data['parameters'] = parameters!.map((v) => v).toList();
    }
    if (errors != null) {
      data['errors'] = errors!.map((v) => v).toList();
    }
    data['results'] = results;
    if (response != null) {
      data['response'] = response!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
