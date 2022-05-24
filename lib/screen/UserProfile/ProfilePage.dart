import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:thyroidclass/screen/SignUp/components/body.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/gestures.dart';
import 'package:thyroidclass/screen/NavigationBar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  Future getImage() async {
    var pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/banner.png',
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                  )
                ],
              ),
              toolbarHeight: 80,
              centerTitle: true,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[Colors.white70, Colors.teal]),
                ),
              ),
            ),
            body: Builder(
                builder: (context) => Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Align(
                                  alignment: Alignment.center,
                                  child: CircleAvatar(
                                      radius: 70,
                                      backgroundColor: Colors.orange,
                                      child: ClipOval(
                                          child: new SizedBox(
                                        width: 120.0,
                                        height: 120.0,
                                        child: (_image != null)
                                            ? Image.file(
                                                _image!,
                                                fit: BoxFit.fill,
                                              )
                                            : Image.network(
                                                "https://i.ibb.co/v13kdDG/seraphinaaki-The-Zone-Baxa-Tolosa-James-jn-jy-wam-2.png",
                                                fit: BoxFit.fill,
                                              ),
                                      )))),
                              Padding(
                                padding: EdgeInsets.only(top: 60.0),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.camera_alt,
                                    size: 30.0,
                                  ),
                                  onPressed: () {
                                    getImage();
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          )
                        ])))));
  }
}
