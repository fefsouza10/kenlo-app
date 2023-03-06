class SaoPauloCities {
  int? total;
  List<Items>? items;

  SaoPauloCities({this.total, this.items});

  SaoPauloCities.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total'] = total;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? id;
  String? cidade;
  String? latitude;
  String? longitude;

  Items({this.id, this.cidade, this.latitude, this.longitude});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cidade = json['cidade'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cidade'] = cidade;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}
