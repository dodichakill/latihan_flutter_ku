// Latihan 42 - Provider State Management (Multi Provider)

import 'package:flutter/material.dart';
import 'package:latihan_flutter_ku/cart.dart';
import 'package:latihan_flutter_ku/money.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // dibawah ini merupakan contoh tanpa shared state (multi provider state management)

    // return MaterialApp(
    //   home: Scaffold(
    //     floatingActionButton: FloatingActionButton(
    //       onPressed: () {},
    //       child: Icon(Icons.add_shopping_cart),
    //       backgroundColor: Colors.purple,
    //     ),
    //     appBar: AppBar(
    //       title:
    //           Text('Latihan 42 - Provider State Management (Multi Provider)'),
    //       backgroundColor: Colors.purple,
    //     ),
    //     body: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Text('Balance'),
    //               Container(
    //                 height: 30,
    //                 child: Align(
    //                   alignment: Alignment.centerRight,
    //                   child: Text(
    //                     '1000',
    //                     style: TextStyle(
    //                         color: Colors.purple, fontWeight: FontWeight.w700),
    //                   ),
    //                 ),
    //                 width: 150,
    //                 margin: EdgeInsets.all(5),
    //                 padding: EdgeInsets.all(5),
    //                 decoration: BoxDecoration(
    //                     color: Colors.purple[100],
    //                     borderRadius: BorderRadius.circular(5),
    //                     border: Border.all(color: Colors.purple, width: 2)),
    //               ),
    //             ],
    //           ),
    //           Container(
    //             height: 30,
    //             child: Align(
    //               alignment: Alignment.centerRight,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text(
    //                     'Apple (500) x 20',
    //                     style: TextStyle(
    //                         color: Colors.black, fontWeight: FontWeight.w500),
    //                   ),
    //                   Text(
    //                     '10000',
    //                     style: TextStyle(
    //                         color: Colors.black, fontWeight: FontWeight.w500),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             margin: EdgeInsets.all(5),
    //             padding: EdgeInsets.all(5),
    //             decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(5),
    //                 border: Border.all(color: Colors.black, width: 2)),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );

    // dibawah ini merupakan contoh dengan menerapkan shared state (multi provider state management)

    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Money>(
            builder: (context) => Money(),
          ),
          ChangeNotifierProvider<Cart>(
            builder: (context) => Cart(),
          ),
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (context, money, _) => Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                onPressed: () {
                  if (money.balance >= 500) {
                    cart.quantity += 1;
                    money.balance -= 500;
                  }
                },
                child: Icon(Icons.add_shopping_cart),
                backgroundColor: Colors.purple,
              ),
            ),
          ),
          appBar: AppBar(
            title:
                Text('Latihan 42 - Provider State Management (Multi Provider)'),
            backgroundColor: Colors.purple,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Balance'),
                    Container(
                      height: 30,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Consumer<Money>(
                          builder: (context, money, _) => Text(
                            money.balance.toString(),
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      width: 150,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.purple, width: 2)),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Cart>(
                      builder: (context, cart, _) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Apple (500) x' + cart.quantity.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            (500 * cart.quantity).toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 2)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// penjelasan singkat
// ----------------
// Provider State Management berguna untuk mengatur provider state (perubahan nilai pada widget tertentu saja dan nilai tersebut tersimpan di dalam shared state, diatas merupakan contoh penggunaan dari multi provider (menggunakan banyak share state)
// sebelum menggunakannya pastikan provider sudah terdaftar pada pubspec.yaml
// diatas merupakan contoh penerapannya
// jika gagal dibuild itu karena versi sdk flutter ini menggunakan flutter versi 2.x.x , cobalah mengubah/downgrade/download ulang flutternya menjadi flutter versi 1.x.x