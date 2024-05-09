import 'package:flutter/material.dart';
class FullScreenImageWithOptions extends StatelessWidget {
  final String imagePath;

  const FullScreenImageWithOptions({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Image
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          // Like, Comment, Share Options
          Positioned(
            bottom: 40.0,
            left: 20.0,
            right: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    // Implement like functionality
                  },
                  icon: Icon(Icons.favorite_border),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                    // Implement comment functionality
                  },
                  icon: Icon(Icons.mode_comment_outlined),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                    // Implement share functionality
                  },
                  icon: Icon(Icons.share),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}