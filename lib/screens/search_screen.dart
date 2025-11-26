import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Product> _searchResults = [];

  void _performSearch(String query) {
    // محاكاة لنتائج البحث - في التطبيق الحقيقي هتكون من API
    setState(() {
      _searchResults = [
        Product(
          id: '1',
          name: 'سامسونج جالاكسي A34',
          description: 'هاتف ذكي بشاشة 6.6 بوصة',
          price: 8999,
          imageUrl: 'assets/images/phone1.jpg',
          store: 'جوميا',
          category: 'هواتف',
          rating: 4.3,
          reviewCount: 125,
          productUrl: 'https://example.com',
          inStock: true,
          shippingCost: 50,
          lastUpdated: DateTime.now(),
        ),
        Product(
          id: '2',
          name: 'سامسونج جالاكسي A34',
          description: 'هاتف ذكي بشاشة 6.6 بوصة',
          price: 8799,
          imageUrl: 'assets/images/phone1.jpg',
          store: 'سوق.كوم',
          category: 'هواتف',
          rating: 4.5,
          reviewCount: 89,
          productUrl: 'https://example.com',
          inStock: true,
          shippingCost: 0,
          lastUpdated: DateTime.now(),
        ),
        Product(
          id: '3',
          name: 'سامسونج جالاكسي A34',
          description: 'هاتف ذكي بشاشة 6.6 بوصة',
          price: 9199,
          imageUrl: 'assets/images/phone1.jpg',
          store: 'نون',
          category: 'هواتف',
          rating: 4.2,
          reviewCount: 67,
          productUrl: 'https://example.com',
          inStock: true,
          shippingCost: 25,
          lastUpdated: DateTime.now(),
        ),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: 'ابحث عن أي منتج...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey),
          ),
          onChanged: (value) {
            if (value.length > 2) {
              _performSearch(value);
            }
          },
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              if (_searchController.text.length > 2) {
                _performSearch(_searchController.text);
              }
            },
          ),
        ],
      ),
      body: _searchResults.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    size: 64,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'ابحث عن أي منتج لرؤية المقارنة',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                final product = _searchResults[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ProductCard(
                    productName: '${product.name} - ${product.store}',
                    price: product.totalPrice,
                    stores: [product.store],
                    imageUrl: product.imageUrl,
                  ),
                );
              },
            ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}