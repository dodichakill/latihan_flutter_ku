// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class MyPostResult {
//   String id;
//   String job;
//   String name;
//   String created;

//   MyPostResult({this.id, this.name, this.job, this.created});

//   factory MyPostResult.createMyPostResult(Map<String, dynamic> object) {
//     return MyPostResult(
//         id: object['id'],
//         name: object['name'],
//         job: object['job'],
//         created: object['createdAt']);
//   } //data tersebut berdasarkan data dari API (harus disesuaikan dengan object dari servernya)

//   // dibawah ini untuk menghubungkan ke APInya
//   static Future<MyPostResult> connectToAPI(String name, String job) async {
//     String apiURL = 'https://reqres.in/api/users';

//     var apiResult = await http.post(apiURL, body: {
//       'name': name,
//       'job': job,
//     }); //disini masih berupa data mentah

//     var jsonObject = json.decode(apiResult
//         .body); //disini kita mengubahnya menjadi Json supaya datanya mudah kita olah

//     return MyPostResult.createMyPostResult(jsonObject);
//   }
// }
