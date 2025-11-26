import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import 'search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'نقيلي',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // قسم البحث
            _buildSearchSection(context),
            const SizedBox(height: 24),
            
            // العروض المميزة
            _buildFeaturedOffers(),
            const SizedBox(height: 24),
            
            // آخر المقارنات
            _buildRecentComparisons(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchSection(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SearchScreen()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: const [
            Icon(Icons.search, color: Colors.grey),
            SizedBox(width: 12),
            Text(
              'دور على أي منتج...',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedOffers() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'أفضل العروض',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              ProductCard(
                productName: 'سامسونج جالاكسي A34',
                price: 8999,
                stores: ['جوميا', 'سوق.كوم', 'نون'],
                imageUrl: 'assets/images/phone1.jpg',
              ),
              SizedBox(width: 12),
              ProductCard(
                productName: 'لابتوب ديل انسبايرون',
                price: 15499,
                stores: ['أمازون', 'سوق.كوم'],
                imageUrl: 'assets/images/laptop1.jpg',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRecentComparisons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'مقارنات حديثة',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: Text(
              'سيظهر هنا تاريخ مقارناتك',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}