class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String store;
  final String category;
  final double rating;
  final int reviewCount;
  final String productUrl;
  final bool inStock;
  final double shippingCost;
  final DateTime lastUpdated;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.store,
    required this.category,
    this.rating = 0.0,
    this.reviewCount = 0,
    required this.productUrl,
    this.inStock = true,
    this.shippingCost = 0.0,
    required this.lastUpdated,
  });

  // دالة لتحويل المنتج لـ Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'store': store,
      'category': category,
      'rating': rating,
      'reviewCount': reviewCount,
      'productUrl': productUrl,
      'inStock': inStock,
      'shippingCost': shippingCost,
      'lastUpdated': lastUpdated.toIso8601String(),
    };
  }

  // دالة لإنشاء منتج من Map
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
      imageUrl: map['imageUrl'],
      store: map['store'],
      category: map['category'],
      rating: map['rating'],
      reviewCount: map['reviewCount'],
      productUrl: map['productUrl'],
      inStock: map['inStock'],
      shippingCost: map['shippingCost'],
      lastUpdated: DateTime.parse(map['lastUpdated']),
    );
  }

  // نسخ المنتج مع إمكانية تعديل بعض الخصائص
  Product copyWith({
    String? id,
    String? name,
    String? description,
    double? price,
    String? imageUrl,
    String? store,
    String? category,
    double? rating,
    int? reviewCount,
    String? productUrl,
    bool? inStock,
    double? shippingCost,
    DateTime? lastUpdated,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      store: store ?? this.store,
      category: category ?? this.category,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      productUrl: productUrl ?? this.productUrl,
      inStock: inStock ?? this.inStock,
      shippingCost: shippingCost ?? this.shippingCost,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }

  // حساب السعر الإجمالي (السعر + الشحن)
  double get totalPrice => price + shippingCost;

  // التحقق إذا كان المنتج فيه خصم
  bool get hasDiscount => price < 1000; // مثال بسيط

  @override
  String toString() {
    return 'Product{name: $name, price: $price, store: $store}';
  }
}