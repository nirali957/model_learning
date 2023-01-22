import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker_gallery_camera/image_picker_gallery_camera.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? image;

  Future getImage(ImgSource source) async {
    var image = await ImagePickerGC.pickImage(
        enableCloseButton: true,
        closeIcon: const Icon(
          Icons.close,
          color: Colors.red,
          size: 12,
        ),
        context: context,
        source: source,
        barrierDismissible: true,
        cameraIcon: const Icon(
          Icons.camera_alt,
          color: Colors.red,
        ), //cameraIcon and galleryIcon can change. If no icon provided default icon will be present
        cameraText: const Text(
          "From Camera",
          style: TextStyle(color: Colors.red),
        ),
        galleryText: const Text(
          "From Gallery",
          style: TextStyle(color: Colors.blue),
        ));
    setState(() {
      image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image picker'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () => getImage(ImgSource.Gallery),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                  ),
                  child: Text(
                    "From Gallery".toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () => getImage(ImgSource.Camera),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.deepPurple,
                  ),
                  child: Text(
                    "From Camera".toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () => getImage(ImgSource.Both),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red,
                  ),
                  child: Text(
                    "Both".toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              image != null ? Image.file(File(image!.path)) : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
