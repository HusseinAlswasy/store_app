import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () async {
          http.Response response = await http
              .post(Uri.parse('https://fakestoreapi.com/products'), body: {
            'title': 'test product',
            'price': '13.5',
            'description': 'lorem ipsum set',
            'image': 'https://i.pravatar.cc',
            'category': 'electronic',
          }, headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          });
        }),
      ),
    );
  }
}
