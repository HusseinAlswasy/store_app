import 'package:flutter/material.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({super.key});

  @override
  static String id = 'UpdatePage';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Update Product',
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
