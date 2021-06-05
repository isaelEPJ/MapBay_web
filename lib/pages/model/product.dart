enum StatusProduct {
  isStoraging,
  isOperating,
  isBoarding,
  isUnLoading,
}

class Product {
  final String? id;
  final String? name;
  final String? description;
  final double? price;
  final String? date;
  final String? category;
  final StatusProduct? statusproduct;
  final int? qtd;
  final double? weight;
  final double? height;
  final double? width;
  final double? length;
  const Product(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.date,
      this.category,
      this.statusproduct,
      this.qtd,
      this.weight,
      this.height,
      this.width,
      this.length});

  double get dimensionsM3 {
    return (height! * width! * length!) * qtd!;
  }

  double get dimensionsKG {
    return weight! * qtd!;
  }

  double get totalPrice {
    return price! * qtd!;
  }
}
