import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(999),
      child: Image.network(
        'https://i.ibb.co/GCkT7rQ/avatar.jpg',
        height: 150,
        width: 150,
      ),
    );
  }
}