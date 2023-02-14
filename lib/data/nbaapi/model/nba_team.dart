class NbaTeam {
  int? id;
  String? name;
  String? nickname;
  String? code;
  String? city;
  String? logo;
  bool? allStar;
  bool? nbaFranchise;
  Leagues? leagues;

  NbaTeam(
      {this.id,
      this.name,
      this.nickname,
      this.code,
      this.city,
      this.logo,
      this.allStar,
      this.nbaFranchise,
      this.leagues});

  NbaTeam.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nickname = json['nickname'];
    code = json['code'];
    city = json['city'];
    logo = json['logo'];
    allStar = json['allStar'];
    nbaFranchise = json['nbaFranchise'];
    leagues =
        json['leagues'] != null ? Leagues.fromJson(json['leagues']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['nickname'] = nickname;
    data['code'] = code;
    data['city'] = city;
    data['logo'] = logo;
    data['allStar'] = allStar;
    data['nbaFranchise'] = nbaFranchise;
    if (leagues != null) {
      data['leagues'] = leagues!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return "($name,$id)";
  }
}

class Leagues {
  Standard? standard;
  Standard? vegas;
  Standard? utah;
  Standard? sacramento;

  Leagues({this.standard, this.vegas, this.utah, this.sacramento});

  Leagues.fromJson(Map<String, dynamic> json) {
    standard =
        json['standard'] != null ? Standard.fromJson(json['standard']) : null;
    vegas = json['vegas'] != null ? Standard.fromJson(json['vegas']) : null;
    utah = json['utah'] != null ? Standard.fromJson(json['utah']) : null;
    sacramento = json['sacramento'] != null
        ? Standard.fromJson(json['sacramento'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (standard != null) {
      data['standard'] = standard!.toJson();
    }
    if (vegas != null) {
      data['vegas'] = vegas!.toJson();
    }
    if (utah != null) {
      data['utah'] = utah!.toJson();
    }
    if (sacramento != null) {
      data['sacramento'] = sacramento!.toJson();
    }
    return data;
  }
}

class Standard {
  String? conference;
  String? division;

  Standard({this.conference, this.division});

  Standard.fromJson(Map<String, dynamic> json) {
    conference = json['conference'];
    division = json['division'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['conference'] = conference;
    data['division'] = division;
    return data;
  }
}
