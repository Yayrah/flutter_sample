import 'package:flutter/material.dart';

const borderColor = Color(0xFF504A4A);
const blue = Color(0xFF0A1D3A);
const green = Color(0xFFC0E862);
const white = Color(0xFFffffff);
const grey = Color(0xFFd9d9d9);
const black = Color(0xFF000000);
Color lightBlue = Color(0xffB8D4FE);
Color deepBlue = Color(0xff1440B1);

List tabNames = [
  'Pet Products',
  'Pet Clothing',
  'Pet Food',
  'Pet Accessories',
  'Pet Watch',
];

List featuredProdNames = [];
List featuredProductGender = [];
List featuredProductAge = [];
List featuredProductLocation = [];
List featuredProductPrice = [];

List featuredProdPics = [
  'asset/images/boxer.jpeg',
  'asset/images/bulldog.jpeg',
  'asset/images/bullmastiff.jpeg',
  'asset/images/cane.jpeg',
  'asset/images/chihuahua.jpeg',
];

List newArrivalNames = [];

List newArrivalPics = [
  'asset/images/boston.jpeg',
  'asset/images/bullmastiff.jpeg',
  'asset/images/cane.jpeg',
  'asset/images/chihuahua.jpeg',
  'asset/images/boston.jpeg',
  'asset/images/bullmastiff.jpeg',
  'asset/images/cane.jpeg',
  'asset/images/chihuahua.jpeg',
];
String loggedInUserID = '';

List NewArrivalPrice = [];
List NewArrivalAge = [];
List NewArrivalGender = [];
List NewArrivalLocation = [];

List categoryNames = [
  'Dogs',
  'Cats',
  'Pet Products',
  'Find Vet',
];

List categoryPics = [
  'asset/images/boston.jpeg',
  'asset/images/bullmastiff.jpeg',
  'asset/images/cane.jpeg',
  'asset/images/chihuahua.jpeg',
];

List vetNames = [
  'Lydia Akuffo',
  'Ronald Twum',
  'Abeiku Essel',
  'Kojo Antwi',
];
List vetImageLocation = [
  'asset/images/vet_pic.png',
  'asset/images/pic_1.jpg',
  'asset/images/pic_2.jpg',
  'asset/images/pic_3.jpg',
];
List vetStars = [5, 1, 4, 2];
List vetExp = [4, 8, 1, 5];

int selectedFeaturedProdIndex = 0;
int selectedNewArrivalIndex = 0;
