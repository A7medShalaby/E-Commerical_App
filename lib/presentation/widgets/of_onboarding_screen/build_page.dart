import 'package:flutter/material.dart';

class BuildPage extends StatelessWidget {
  final Color pageColor;
  final String urlImage;
  final String pageTitle;
  final String pageSubtitle;
  const BuildPage({
    Key? key,
    required this.pageColor,
    required this.urlImage,
    required this.pageTitle,
    required this.pageSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(
            pageTitle,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              pageSubtitle,
            ),
          ),
        ],
      ),
    );
  }
}
