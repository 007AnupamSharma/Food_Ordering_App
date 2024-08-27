import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addUserDetails(Map<String, dynamic> userdata, String Id) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(Id)
        .set(userdata);
  }

  Future UpdateUserWallet(String id, String amount) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(id)
        .update({"Wallet": amount});
  }

  Future addFoodItem(Map<String, dynamic> userdata, String name) async {
    return await FirebaseFirestore.instance.collection(name).add(userdata);
  }

  Future<Stream<QuerySnapshot>> getFoodItems(String name) async {
    return await FirebaseFirestore.instance.collection(name).snapshots();
  }

  Future addFoodToCart(Map<String, dynamic> userdata, String name) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(name)
        .collection("Cart")
        .add(userdata);
  }

  Future<Stream<QuerySnapshot>> getFoodCart(String id) async {
    return await FirebaseFirestore.instance.collection("users").doc(id).collection("Cart").snapshots();
  }


  // UpdateUserWallet(String id, String amount) async {
  //   return await FirebaseFirestore.instance
  //       .collection("users")
  //       .doc(id)
  //       .update({"Wallet": amount});
  // }

}
