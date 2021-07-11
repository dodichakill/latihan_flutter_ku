// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class User {
//   String id;
//   String name;

//   User({
//     this.id,
//     this.name,
//   });

//   factory User.createUser(Map<String, dynamic> object) {
//     return User(
//       id: object['id'].toString(),
//       name: object['first_name'] + ' ' + object['last_name'],
//     );
//   } //data tersebut berdasarkan data dari API (harus disesuaikan dengan object dari servernya)

//   // dibawah ini untuk menghubungkan ke APInya
//   static Future<User> connectToAPI(String id) async {
//     String apiURL = 'https://reqres.in/api/users/' + id;

//     var apiResult = await http.get(apiURL); //disini masih berupa data mentah

//     var jsonObject = json.decode(apiResult
//         .body); //disini kita mengubahnya menjadi Json supaya datanya mudah kita olah
//     var userData = (jsonObject as Map<String, dynamic>)[
//         'data']; //mendapatkan isi data dari id yang telah ditentukan
//     return User.createUser(userData);
//   }
// }
