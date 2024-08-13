import 'package:flutter/material.dart';
import '../widgets/app_bar_viewer.dart';
import '../widgets/category_builder.dart'; // Adjust the import based on your project structure
import '../widgets/news_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarViewer(),
      ),
      body: CustomScrollView(
        slivers: [
          // Assuming CategoryBuilder returns a regular widget (not a sliver)
          SliverToBoxAdapter(
            child: CategoryBuilder(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return const NewsCard();
              },
              childCount: 20, // Number of items in the list
            ),
          ),
        ],
      ),
    );
  }
}
