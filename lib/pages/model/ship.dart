import 'dart:convert';

class Ship {
  String ship_number;
  String id;
  String name;
  String imageUrl;
  String document;
  String responsible;
  DateTime? fabrication;
  String? brand;
  String contact;
  double? capacity;
  double? width;
  double? height;
  double? lenght;
  double? weight;
  DateTime updated_at;
  DateTime created_at;
  Ship({
    required this.ship_number,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.document,
    required this.responsible,
    this.fabrication,
    this.brand,
    required this.contact,
    this.capacity,
    this.width,
    this.height,
    this.lenght,
    this.weight,
    required this.updated_at,
    required this.created_at,
  });

  Map<String, dynamic> toMap() {
    return {
      'ship_number': ship_number,
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'document': document,
      'responsible': responsible,
      'fabrication': fabrication?.millisecondsSinceEpoch,
      'brand': brand,
      'contact': contact,
      'capacity': capacity,
      'width': width,
      'height': height,
      'lenght': lenght,
      'weight': weight,
      'updated_at': updated_at.millisecondsSinceEpoch,
      'created_at': created_at.millisecondsSinceEpoch,
    };
  }

  factory Ship.fromMap(Map<String, dynamic> map) {
    return Ship(
      ship_number: map['ship_number'],
      id: map['id'],
      name: map['name'],
      imageUrl: map['imageUrl'],
      document: map['document'],
      responsible: map['responsible'],
      // fabrication: DateTime.fromMillisecondsSinceEpoch(map['fabrication']),
      fabrication: DateTime(2000, 07, 12),
      brand: map['brand'],
      contact: map['contact'],
      capacity: map['capacity'],
      width: map['width'],
      height: map['height'],
      lenght: map['lenght'],
      weight: map['weight'],
      // updated_at: DateTime.fromMillisecondsSinceEpoch(map['updated_at']),
      // created_at: DateTime.fromMillisecondsSinceEpoch(map['created_at']),
      updated_at: DateTime(2021, 01, 10),
      created_at: DateTime(2019, 12, 12),
    );
  }

  String toJson() => json.encode(toMap());

  factory Ship.fromJson(String source) => Ship.fromMap(json.decode(source));
}
