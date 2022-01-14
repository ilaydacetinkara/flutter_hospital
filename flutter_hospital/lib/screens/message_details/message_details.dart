import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hospital/constant.dart';
import 'package:image_picker/image_picker.dart';

class MessageDetails extends StatefulWidget {
  const MessageDetails({Key? key}) : super(key: key);

  @override
  _MessageDetailsState createState() => _MessageDetailsState();
}

class _MessageDetailsState extends State<MessageDetails> {
  //  File dosya;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryLightColor,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "<https://randomuser.me/api/portraits/men/5.jpg>"),
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Kriss Benwat",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 70,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {
                          file();
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: kPrimaryColor,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  file() {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("Mesaj Oluştur"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("Galeriden Yükle"),
                onPressed: () {
                  // image();
                },
              ),
              SimpleDialogOption(
                child: Text("Fotoğraf Çek"),
                onPressed: () {
                  // pdf();
                },
              ),
              SimpleDialogOption(
                child: Text("Pdf yükle"),
                onPressed: () {
                  // doc();
                },
              ),
              SimpleDialogOption(
                child: Text("Doc yükle"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
  // image() async {
  //   Navigator.pop(context);
  //   var image = await ImagePicker().getImage(source: ImageSource.gallery, maxWidth: 800, maxHeight: 600, imageQuality: 80);
  //   setState(() {
  //      dosya = File(image.path);
  //   });
  // }
}
