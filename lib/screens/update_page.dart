import 'package:flutter/material.dart';
import 'package:store_app/widget/custom_button.dart';
import 'package:store_app/widget/custom_text_field.dart';
import 'package:lottie/lottie.dart';

class UpdatePage extends StatelessWidget {
  UpdatePage({super.key, this.title, this.desc, this.image, this.price});

  @override
  static String id = 'UpdatePage';
  String? title, desc, image;
  int? price;
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
                onChanged: (data) {
                  title: data;
                },
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Describtion',
                labelText: 'Describtion',
                onChanged: (data) {
                  desc: data;
                },
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Price',
                labelText: 'Price',
                onChanged: (data) {
                  price:int.parse(data);
                },
                type: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Image',
                labelText: 'Image',
                onChanged: (data) {
                  image: data;
                },
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
