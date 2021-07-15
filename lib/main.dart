// Latihan 48 - Product Card (BoxShadow, RoundedRectangleBorder)

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:latihan_flutter_ku/product_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Latihan 48 - Product Card (BoxShadow, RoundedRectangleBorder)',
            maxLines: 3,
          ),
          backgroundColor: firstColor,
        ),
        body: ChangeNotifierProvider<ProductState>(
          builder: (context) => ProductState(),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<ProductState>(
                builder: (context, productState, _) => ProductCard(
                  imgUrl: 'images/texture-kayu.jpg',
                  name: 'kayu kualitas terbaik berat 1 ton',
                  price: 'Rp 50.000.000',
                  quantity: productState.quantity,
                  notification:
                      (productState.quantity > 5) ? 'Diskon 40%' : null,
                  onAddCartTap: () {},
                  onDecTap: () {
                    productState.quantity--;
                  },
                  onIncTap: () {
                    productState.quantity++;
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProductState with ChangeNotifier {
  int _quantity = 0;
  int get quantity => _quantity;
  set quantity(int newValue) {
    _quantity = newValue;
    notifyListeners();
  }
}
// penjelasan singkat
// ----------------
// di materi kali ini kita menerapkan BoxShadow
// jika kita gagal merun project ini itu karena flutter sdk kita menggunakan versi 2.x.x untuk mengatasinya bisa di downgrade ke flutter 1.x.x