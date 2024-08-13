import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import '../widgets/card_category.dart';

class CategoryBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mock data for demonstration
    final categories = [
      CategoryModel(title: 'Sports', image: 'assets/sports.avif'),
      CategoryModel(title: 'Technology', image: 'assets/technology.jpeg',),
      CategoryModel(title: 'Science', image: 'assets/science.avif',),
      CategoryModel(title: 'general', image: 'assets/general.avif',),
      CategoryModel(title: 'Entertainment', image: 'assets/entertaiment.avif',),
      CategoryModel(title: 'Business', image: 'assets/business.avif',),
    ];

    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CardCategory(categoryModel: categories[index]);
        },
      ),
    );
  }
}
