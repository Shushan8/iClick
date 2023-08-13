import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:i_click/model/user1.dart';

class SignInProvider with ChangeNotifier {
  final authService = FirebaseAuth.instance;
  AppUser? user1;
  void login(String email, String password) {
    try {
      authService.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {}
  }

  Future<void> getUserById(String id) async {
    final documentSnapshot =
        await FirebaseFirestore.instance.collection('user').doc(id).get();
    final json = documentSnapshot.data();
    user1 = AppUser.fromJson(json!);
    notifyListeners();
  }
}
