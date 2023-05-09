import 'package:flutter/material.dart';
import 'package:store_app/widget/custom_button.dart';
import 'package:store_app/widget/custom_text_field.dart';
import 'package:lottie/lottie.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                  'https://assets6.lottiefiles.com/packages/lf20_yefkwifo.json',
                  height: 200),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Product Name',
                labelText: 'Product Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Describtion',
                labelText: 'Describtion',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Price',
                labelText: 'Price',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Image',
                labelText: 'Image',
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(text: 'Update'),
            ],
          ),
        ),
      ),
    );
  }
}
