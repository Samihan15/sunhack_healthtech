// @dart=2.9
import 'dart:io';

import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/firebase_ml_api.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = '';
  File image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('S U N H A C K'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: image != null
                      ? Image.file(image)
                      : Icon(
                          Icons.photo,
                          size: 60,
                        ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      pickImage();
                    },
                    child: Text('Choose from gallery'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      pickImageFromCamera();
                    },
                    child: Text('Choose from camera'),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      scanText();
                    },
                    child: Text('scan for text'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      clear();
                    },
                    child: Text('clear'),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(border: Border.all()),
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  child: SelectableText(
                    text,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future pickImage() async {
    final file = await ImagePicker().getImage(source: ImageSource.gallery);
    setImage(File(file.path));
  }

  Future pickImageFromCamera() async {
    final file = await ImagePicker().getImage(source: ImageSource.camera);
    setImage(File(file.path));
  }

  Future scanText() async {
    showDialog(
        context: context,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));
    final text = await FirebaseMLApi.recogniseText(image);

    setText(text);

    Navigator.of(context).pop();
  }

  void setImage(File newImage) {
    setState(() {
      image = newImage;
    });
  }

  void clear() {
    setImage(null);
    setText('');
  }

  void setText(String newText) {
    setState(() {
      text = newText;
    });
  }
}
