import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widget/custom_button.dart';
import 'package:store_app/widget/custom_text_field.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdatePage extends StatefulWidget {
  UpdatePage({super.key, this.title, this.desc, this.image, this.price});

  @override
  static String id = 'UpdatePage';
  String? title, desc, image;
  String? price;
  bool isLoading = false;

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: widget.isLoading,
      child: Scaffold(
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
                    widget.title = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: 'Describtion',
                  labelText: 'Describtion',
                  onChanged: (data) {
                    widget.desc = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: 'Price',
                  labelText: 'Price',
                  onChanged: (data) {
                    widget.price = data;
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
                    widget.image = data;
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                CustomButton(
                  text: 'Update',
                  onTap: () async {
                    widget.isLoading = true;
                    setState(() {});
                    
                      await update(product);
                  
                    widget.isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> update(ProductModel product) async {
    await UpdateProductServices().updateData(
      id: product.id,
      title: widget.title == null ? product.title : widget.title!,
      price: widget.price == null ? product.price.toString() : widget.price!,
      desc: widget.desc == null ? product.description : widget.desc!,
      image: widget.image == null ? product.image : widget.image!,
      category: product.category,
    );
  }
}
