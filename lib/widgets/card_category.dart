import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart'; // Adjust the import based on your project structure

class CardCategory extends StatelessWidget {
  const CardCategory({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
      child: Container(
        height: 120,
        width: 160,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(categoryModel.image!),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            categoryModel.title!,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
