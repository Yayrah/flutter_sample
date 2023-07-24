import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pet_life_gh/constants.dart';
import 'package:pet_life_gh/model/featured_products_model.dart';

class ReadData {
  Future getAllFeaturedProducts() async {
    featuredProdNames.clear();
    featuredProductLocation.clear();
    featuredProductPrice.clear();
    featuredProductAge.clear();
    featuredProductGender.clear();
    // featuredProdPics.clear();

    final querySnapshot =
        await FirebaseFirestore.instance.collection('Featured Products').get();

    if (querySnapshot.docs.isNotEmpty) {
      for (var document in querySnapshot.docs) {
        final docID = document.id;
        final snapshot = await FirebaseFirestore.instance
            .collection('Featured Products')
            .doc(docID)
            .get();
        final documentData = snapshot.data()!;
        final featuredProductsData = FeaturedProductModel(
          pic: '',
          id: documentData['Product ID'],
          name: documentData['Name'],
          age: documentData['Age'],
          gender: documentData['Gender'],
          location: documentData['Location'],
          price: documentData['Price'],
        );
        featuredProdNames.add(featuredProductsData.name);
        featuredProductAge.add(featuredProductsData.age);
        featuredProductGender.add(featuredProductsData.gender);
        featuredProductLocation.add(featuredProductsData.location);
        featuredProductPrice.add(featuredProductsData.price);
        // featuredProdPics.add(featuredProductsData.pic);
      }
    }
  }

  Future getAllNewArrivals() async {
    newArrivalNames.clear();
    NewArrivalLocation.clear();
    NewArrivalPrice.clear();
    NewArrivalAge.clear();
    NewArrivalGender.clear();
    // newArrivalsPics.clear();

    final querySnapshot = await FirebaseFirestore.instance
        .collection('New Arrival Products')
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      for (var document in querySnapshot.docs) {
        final docID = document.id;
        final snapshot = await FirebaseFirestore.instance
            .collection('New Arrival Products')
            .doc(docID)
            .get();
        final documentData = snapshot.data()!;
        final featuredProductsData = FeaturedProductModel(
          pic: '',
          id: documentData['Product ID'],
          name: documentData['Name'],
          age: documentData['Age'],
          gender: documentData['Gender'],
          location: documentData['Location'],
          price: documentData['Price'],
        );
        newArrivalNames.add(featuredProductsData.name);
        NewArrivalAge.add(featuredProductsData.age);
        NewArrivalGender.add(featuredProductsData.gender);
        NewArrivalLocation.add(featuredProductsData.location);
        NewArrivalPrice.add(featuredProductsData.price.toString());
        // newArrivalsPics.add(featuredProductsData.pic);
      }
    }
  }
}
