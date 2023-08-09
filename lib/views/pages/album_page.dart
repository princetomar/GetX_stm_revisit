import 'package:flutter/material.dart';
import 'package:flutter_getx_tut/controllers/album_controller.dart';
import 'package:get/get.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key});

  @override
  Widget build(BuildContext context) {
    final albumController = Get.find<AlbumController>();
    return Scaffold(
      body: Center(child: Obx(() {
        if (albumController.photoAlbums == null) {
          return CircularProgressIndicator();
        }
        return ListView.builder(
          itemCount: albumController.photoAlbums.length,
          itemBuilder: (context, index) {
            final album = albumController.photoAlbums[index];
            return ListTile(
              title: Text(album['title']),
            );
          },
        );
      })),
    );
  }
}
