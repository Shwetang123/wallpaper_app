import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wallpaper_app/model/photosModel.dart';

class ApiOperation{
  static List<PhotosModel> trendingWallpapers=[];


  static getTrendingWallpaper() async{

    await http.get(
      Uri.parse("https://api.pexels.com/v1/curated"),
        headers: {"Authorization": "Jvnb6jiO09piEdz32o6xjWBwAt0yZM3Yx4xNWuSIRm6EsRg6AFI0RJer"},

    ).then((value){
        Map<String,dynamic>  jsonData= jsonDecode(value.body);
        List photos= jsonData['photos'];
        photos.forEach((element) { 
         trendingWallpapers.add(PhotosModel.fromAPI2App(element));
        });
    });
 return trendingWallpapers;
  }
}


// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class ApiOperation {
//   static getTrendingWallpapers() async {
//     try {
//       var response = await http.get(
//         Uri.parse("https://api.pexels.com/v1/curated"),
//         headers: {"Authorization": "Jvnb6jiO09piEdz32o6xjWBwAt0yZM3Yx4xNWuSIRm6EsRg6AFI0RJer"},
//       );
//
//       if (response.statusCode == 200) {
//         Map<String, dynamic> jsonData = jsonDecode(response.body);
//         List photos = jsonData['photos']; // 'photos' instead of 'Photos'
//
//         photos.forEach((element) {
//           Map<String, dynamic> src = element["src"];
//           print(src["portrait"]);
//         });
//       } else {
//         print("Request failed with status: ${response.statusCode}");
//       }
//     } catch (e) {
//       print("Error: $e");
//     }
//   }
// }
