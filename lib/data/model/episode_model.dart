class EpisodeModel {
  Info? info;
  final List<Results>? results;

  EpisodeModel({
    this.info,
    this.results,
  });
  factory EpisodeModel.fromJson(Map<String, dynamic> json) {
    return EpisodeModel(
      info: json["info"],
      results: List<Results>.from(json["results"].map((value) => Results.fromJson(value))),
    );
  }
}

class Info {
  final int? count;
  final int? pages;
  final String? next;
  final String? prev;

  Info({
    this.count,
    this.pages,
    this.next,
    this.prev,
  });

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      count: json['count'],
      pages: json['pages'],
      next: json['next'],
      prev: json['prev'],
    );
  }
}

class Results {
  final int? id;
  final String? name;
  final String? airDate;
  final String? episode;
  final List<String>? characters;
  final String? url;
  final String? created;

  Results({
    this.id,
    this.name,
    this.airDate,
    this.episode,
    this.characters,
    this.url,
    this.created,
  });

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      id: json['id'],
      name: json['name'],
      airDate: json['airDate'],
      episode: json['episode'],
      characters: json['characters'].cast<String>(),
      url: json['url'],
      created: json['created'],
    );
  }
}
