class AppConstants {
  // ألوان التطبيق
  static const primaryColor = 0xFF2563EB;
  static const secondaryColor = 0xFF64748B;
  static const accentColor = 0xFF10B981;
  static const backgroundColor = 0xFFF8FAFC;
  static const textColor = 0xFF1E293B;
  static const errorColor = 0xFFEF4444;
  static const successColor = 0xFF10B981;

  // نصوص التطبيق
  static const appName = 'نقيلي';
  static const appSlogan = 'دور، قارن، ووفر';
  static const searchHint = 'ابحث عن أي منتج...';
  static const featuredOffers = 'أفضل العروض';
  static const recentComparisons = 'مقارنات حديثة';

  // روابط API
  static const baseUrl = 'https://api.na2eely.com';
  static const searchEndpoint = '/api/search';
  static const compareEndpoint = '/api/compare';
  static const productsEndpoint = '/api/products';

  // إعدادات التطبيق
  static const defaultLanguage = 'ar';
  static const defaultCurrency = 'EGP';
  static const supportedStores = [
    'جوميا',
    'سوق.كوم',
    'نون',
    'أمازون',
    'علي اكسبريس',
    'أكسترا',
    'كارفور',
    'بى تك',
  ];

  // رسائل المستخدم
  static const noResultsMessage = 'لم نجد نتائج لبحثك';
  static const tryDifferentKeywords = 'جرب كلمات بحث مختلفة';
  static const loadingMessage = 'جاري البحث في المتاجر...';
  static const errorMessage = 'حدث خطأ أثناء البحث';
  static const retryMessage = 'حاول مرة أخرى';

  // أحجام التطبيق
  static const defaultPadding = 16.0;
  static const defaultBorderRadius = 12.0;
  static const cardElevation = 2.0;
  static const iconSize = 24.0;
}

class AppRoutes {
  static const home = '/';
  static const search = '/search';
  static const results = '/results';
  static const productDetails = '/product-details';
  static const favorites = '/favorites';
  static const settings = '/settings';
}