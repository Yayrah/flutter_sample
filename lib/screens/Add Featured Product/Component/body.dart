// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:pet_life_gh/screens/Home2/home_screen2.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

String addedProductImage = '';
String addedProductImageUrl = '';
String addedProductImageFilePath = '';
// ListResult? addedProductImageResultList;

class _BodyState extends State<Body> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _priceController = TextEditingController();
  final _locationController = TextEditingController();
  final _genderController = TextEditingController();

  @override
  void dispose() {
    _ageController.dispose();
    _nameController.dispose();
    _locationController.dispose();
    _priceController.dispose();
    _genderController.dispose();
    super.dispose();
  }

  Future addFeaturedProductDetails() async {
    final document =
        await FirebaseFirestore.instance.collection('Featured Products').add({
      'Name': _nameController.text.trim(),
      'Age': int.parse(_ageController.text.trim()),
      'Gender': _genderController.text.trim(),
      'Location': _locationController.text.trim(),
      'Price': int.parse(_priceController.text.trim()),
    });

    final docID = document.id;

    // uploadPic(docID, addedProductImageFilePath);

    await FirebaseFirestore.instance
        .collection('Featured Products')
        .doc(docID)
        .update({
      'Product ID': docID,
      'Image': addedProductImageUrl,
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => HomeSreen2()),
      ),
    );
  }

  // void addImage() async {
  //   try {
  //     final results = await FilePicker.platform.pickFiles(
  //       allowMultiple: false,
  //       allowedExtensions: ['jpg', 'jpeg', 'png'],
  //       type: FileType.custom,
  //     );

  //     if (results != null) {
  //       addedProductImage = results.files.single.name;
  //       addedProductImageFilePath = results.files.single.path!;
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  // Future uploadPic(String productID, String filePath) async {
  //   File file = File(filePath);
  //   final querySnapshot = await FirebaseStorage.instance
  //       .ref('$loggedInUserID/Added Products/$productID')
  //       .child('image.jpeg')
  //       .putFile(file);

  //   addedProductImageUrl = await querySnapshot.ref.getDownloadURL();
  //   print(addedProductImageUrl);
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: addedProductImage == ''
                                ? Border.all(color: grey, width: 1)
                                : null,
                            image: addedProductImage == ''
                                ? null
                                : DecorationImage(
                                    fit: BoxFit.cover,
                                    image: FileImage(
                                      File(addedProductImage),
                                    ),
                                  ),
                          ),
                          child: addedProductImage == ''
                              ? Center(
                                  child: Icon(
                                    Icons.pets,
                                    color: grey,
                                    size: 42,
                                  ),
                                )
                              : SizedBox(),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Add image ',
                                style: TextStyle(
                                  color: green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(Icons.add_a_photo, color: green),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          TextField(
                            controller: _nameController,
                            keyboardType: TextInputType.name,
                            autocorrect: false,
                            autofocus: false,
                            cursorColor: blue,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: lightBlue,
                                  width: 1,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                              label: Text("Name"),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: _ageController,
                            keyboardType: TextInputType.number,
                            autocorrect: false,
                            autofocus: false,
                            cursorColor: blue,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: lightBlue,
                                  width: 1,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                              label: Text("Age"),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: _genderController,
                            keyboardType: TextInputType.text,
                            autocorrect: false,
                            autofocus: false,
                            cursorColor: blue,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: lightBlue,
                                  width: 1,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                              label: Text("Gender"),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: _locationController,
                            keyboardType: TextInputType.multiline,
                            autocorrect: false,
                            autofocus: false,
                            cursorColor: blue,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: lightBlue,
                                  width: 1,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                              label: Text("Location"),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: _priceController,
                            keyboardType: TextInputType.number,
                            autocorrect: false,
                            autofocus: false,
                            cursorColor: blue,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: lightBlue,
                                  width: 1,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                              label: Text("Price"),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: 1,
          ),
          GestureDetector(
            onTap: addFeaturedProductDetails,
            child: Container(
              height: 53,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2), topRight: Radius.circular(2)),
                color: blue,
              ),
              child: Center(
                child: Text(
                  'Save',
                  style: TextStyle(
                    color: white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
