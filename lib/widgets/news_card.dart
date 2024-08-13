import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400, // Adjust the height as needed
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Image.network(
                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjg13yPPoofEaLyKfSuHD7U8t5mrFN8rgHgn96rouZOF_VZ4D5sVnbc4hboP5Dnlr4AgekgMe_AUcGjTu1n9FCWfpa9Hp71gwxYu0zXg2XN0zB7NWZKh0-X1Qb8XEqZunK1bwpLmfjJRVbmLEcOxie5-WBoNjVSV6Z3HS-rSsdA4hHEcgE6vGNmJFTNpi0/w426-h640/wallpaper%205.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'This is the title This is the title This is the title This is the title This is the titleThis is the title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            const Text(
              'This is the subtitle This is the subtitle This is the subtitle This is the subtitle',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
