// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code, avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sft/components/app_textfield.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: Text(
                "Add a new Product!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      AppTextfield(hint: 'Name of the product'),
                      SizedBox(height: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          width: double.infinity,
                          height: 190,
                          color: Colors.grey.shade100,
                          child: Column(
                            children: [
                              Text(
                                "Add images of the product",
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: 120,
                                    width: 120,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)))),
                                        onPressed: () => pickImage(),
                                        child: Icon(Icons.add_a_photo)),
                                  ),
                                  image != null
                                      ? Image.file(
                                          image!,
                                          width: 120,
                                          height: 120,
                                        )
                                      : Transform.scale(
                                          scale: 4, child: Icon(Icons.image))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Description',
                          hintStyle: TextStyle(fontFamily: 'Font1'),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.grey.shade600,
                              side: BorderSide(
                                  width: 3, color: Colors.teal.shade900)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "Price :           ₹ ",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 98,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7),
                                  child: TextField(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.teal.shade900),
                          onPressed: () {},
                          child: Text(
                            "Post",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
