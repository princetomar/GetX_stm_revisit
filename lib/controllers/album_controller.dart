import 'dart:convert';

import 'package:flutter_getx_tut/services/api_service.dart';
import 'package:get/get.dart';

class AlbumController extends GetxController {
  final photoAlbums = [].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchPhotoAlbums();
    super.onInit();
  }

  void fetchPhotoAlbums() async {
    final response = await ApiService().requestGet();
    if (response.statusCode == 200) {
      final output = jsonDecode(response.body);
      photoAlbums.assignAll(output);
    } else {
      print("Error while fetching photos");
    }
  }
}
