class UserModel {
  String? status;
  List<Result>? result;

  UserModel({this.status, this.result});

  UserModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  String? lastName;
  int? lastOnlineTimeSeconds;
  int? rating;
  int? friendOfCount;
  String? titlePhoto;
  String? handle;
  String? avatar;
  String? firstName;
  int? contribution;
  String? organization;
  String? rank;
  int? maxRating;
  int? registrationTimeSeconds;
  String? maxRank;
  String? country;
  String? city;

  Result(
      {this.lastName,
        this.lastOnlineTimeSeconds,
        this.rating,
        this.friendOfCount,
        this.titlePhoto,
        this.handle,
        this.avatar,
        this.firstName,
        this.contribution,
        this.organization,
        this.rank,
        this.maxRating,
        this.registrationTimeSeconds,
        this.maxRank,
        this.country,
        this.city});

  Result.fromJson(Map<String, dynamic> json) {
    lastName = json['lastName'];
    lastOnlineTimeSeconds = json['lastOnlineTimeSeconds'];
    rating = json['rating'];
    friendOfCount = json['friendOfCount'];
    titlePhoto = json['titlePhoto'];
    handle = json['handle'];
    avatar = json['avatar'];
    firstName = json['firstName'];
    contribution = json['contribution'];
    organization = json['organization'];
    rank = json['rank'];
    maxRating = json['maxRating'];
    registrationTimeSeconds = json['registrationTimeSeconds'];
    maxRank = json['maxRank'];
    country = json['country'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastName'] = this.lastName;
    data['lastOnlineTimeSeconds'] = this.lastOnlineTimeSeconds;
    data['rating'] = this.rating;
    data['friendOfCount'] = this.friendOfCount;
    data['titlePhoto'] = this.titlePhoto;
    data['handle'] = this.handle;
    data['avatar'] = this.avatar;
    data['firstName'] = this.firstName;
    data['contribution'] = this.contribution;
    data['organization'] = this.organization;
    data['rank'] = this.rank;
    data['maxRating'] = this.maxRating;
    data['registrationTimeSeconds'] = this.registrationTimeSeconds;
    data['maxRank'] = this.maxRank;
    data['country'] = this.country;
    data['city'] = this.city;
    return data;
  }
}
