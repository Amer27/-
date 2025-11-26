import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ApiService {
  static const String _baseUrl = 'https://api.na2eely.com'; // الرابط الحقيقي هيتبدل

  // دالة البحث في المتاجر
  static Future<List<Product>> searchProducts(String query) async {
    try {
      // محاكاة لبيانات API - في التطبيق النهائي هتconnect بالخوادم الحقيقية
      await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة
      
      // بيانات وهمية للاختبار
      return _mockSearchResults(query);
    } catch (e) {
      throw Exception('فشل في البحث: $e');
    }
  }

  // دالة جلب تفاصيل المنتج
  static Future<Product> getProductDetails(String productId) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _mockProductDetails(productId);
  }

  // دالة مقارنة الأسعار
  static Future<List<Product>> comparePrices(String productName) async {
    await Future.delayed(const Duration(seconds: 2));
    return _mockPriceComparison(productName);
  }

  // بيانات وهمية للبحث
  static List<Product> _mockSearchResults(String query) {
    return [
      Product(
        id: '1',
        name: 'سامسونج جالاكسي A34',
        description: 'هاتف ذكي بشاشة 6.6 بوصة، 5G، ذاكرة 128GB',
        price: 8999,
        imageUrl: 'assets/images/phone1.jpg',
        store: 'جوميا',
        category: 'هواتف',
        rating: 4.3,
        reviewCount: 125,
        productUrl: 'https://jumia.com/product1',
        inStock: true,
        shippingCost: 50,
        lastUpdated: DateTime.now(),
      ),
      Product(
        id: '2',
        name: 'سامسونج جالاكسي A34',
        description: 'هاتف ذكي بشاشة 6.6 بوصة، 5G، ذاكرة 128GB',
        price: 8799,
        imageUrl: 'assets/images/phone1.jpg',
        store: 'سوق.كوم',
        category: 'هواتف',
        rating: 4.5,
        reviewCount: 89,
        productUrl: 'https://souq.com/product1',
        inStock: true,
        shippingCost: 0,
        lastUpdated: DateTime.now(),
      ),
    ];
  }

  // تفاصيل منتج وهمي
  static Product _mockProductDetails(String productId) {
    return Product(
      id: productId,
      name: 'سامسونج جالاكسي A34',
      description: 'هاتف ذكي متطور بشاشة Super AMOLED، كاميرا ثلاثية 48MP، بطارية 5000mAh',
      price: 8999,
      imageUrl: 'assets/images/phone1.jpg',
      store: 'جوميا',
      category: 'هواتف',
      rating: 4.3,
      reviewCount: 125,
      productUrl: 'https://jumia.com/product1',
      inStock: true,
      shippingCost: 50,
      lastUpdated: DateTime.now(),
    );
  }

  // مقارنة أسعار وهمية
  static List<Product> _mockPriceComparison(String productName) {
    return [
      Product(
        id: '1',
        name: productName,
        description: 'منتج عالي الجودة',
        price: 8999,
        imageUrl: 'assets/images/product1.jpg',
        store: 'جوميا',
        category: 'إلكترونيات',
        rating: 4.3,
        reviewCount: 125,
        productUrl: 'https://jumia.com/product1',
        inStock: true,
        shippingCost: 50,
        lastUpdated: DateTime.now(),
      ),
      Product(
        id: '2',
        name: productName,
        description: 'منتج عالي الجودة',
        price: 8799,
        imageUrl: 'assets/images/product1.jpg',
        store: 'سوق.كوم',
        category: 'إلكترونيات',
        rating: 4.5,
        reviewCount: 89,
        productUrl: 'https://souq.com/product1',
        inStock: true,
        shippingCost: 0,
        lastUpdated: DateTime.now(),
      ),
      Product(
        id: '3',
        name: productName,
        description: 'منتج عالي الجودة',
        price: 9199,
        imageUrl: 'assets/images/product1.jpg',
        store: 'نون',
        category: 'إلكترونيات',
        rating: 4.2,
        reviewCount: 67,
        productUrl: 'https://noon.com/product1',
        inStock: true,
        shippingCost: 25,
        lastUpdated: DateTime.now(),
      ),
    ];
  }
}