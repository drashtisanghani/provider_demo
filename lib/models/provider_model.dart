class DemoModel {
  bool? status;
  Data? data;

  DemoModel({this.status, this.data});
  DemoModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = Data.fromJson(json['data']);
  }
}

class Data {
  AdId? adId;
  KeyWord? keyword;
  List<MoreApp>? moreApp;
  List<PlayGame>? playGame;

  Data({this.adId, this.keyword, this.moreApp, this.playGame});
  Data.fromJson(Map<String, dynamic> json) {
    var list = json['more_app'] as List;
    List<MoreApp> moreApplist = list.map((i) => MoreApp.fromJson(i)).toList();
    var gamelist = json['play_game'] as List;
    List<PlayGame> morepalygamelist =
        gamelist.map((i) => PlayGame.fromJson(i)).toList();
    adId = AdId.fromJson(json['ad_id']);
    keyword = KeyWord.fromJson(json['keyword']);
    moreApp = moreApplist;
    gamelist = morepalygamelist;
  }
}

class AdId {
  String? admob_openad;
  String? facebook_interstitial;
  String? facebook_banner;
  String? admob_reward;
  String? admob_banner;
  String? facebook_reward;
  String? admob_interstitial;
  String? ad_type;
  String? admob_native;
  String? facebook_native;

  AdId(
      {this.admob_openad,
      this.facebook_interstitial,
      this.facebook_banner,
      this.admob_reward,
      this.admob_banner,
      this.facebook_reward,
      this.admob_interstitial,
      this.ad_type,
      this.admob_native,
      this.facebook_native});
  AdId.fromJson(Map<String, dynamic> json) {
    admob_openad = json['admob_openad'];
    facebook_interstitial = json['facebook_interstitial'];
    facebook_banner = json['facebook_banner'];
    admob_reward = json['admob_reward'];
    admob_banner = json['admob_banner'];
    facebook_reward = json['facebook_reward'];
    admob_interstitial = json['admob_interstitial'];
    ad_type = json['ad_type'];
    admob_native = json['admob_native'];
    facebook_native = json['facebook_native'];
  }
}

class KeyWord {
  String? version;
  String? privacy;

  KeyWord({this.version, this.privacy});
  KeyWord.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    privacy = json['privacy'];
  }
}

class MoreApp {
  bool? active;
  String? appname;
  String? imageurl;
  String? appurl;

  MoreApp({this.active, this.appname, this.imageurl, this.appurl});
  MoreApp.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    appname = json['appname'];
    imageurl = json['imageurl'];
    appurl = json['appurl'];
  }
}

class PlayGame {
  bool? active;
  String? imageurl;
  String? appurl;

  PlayGame({this.active, this.imageurl, this.appurl});

  PlayGame.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    imageurl = json['imageurl'];
    appurl = json['appurl'];
  }
}
