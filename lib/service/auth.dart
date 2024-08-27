import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  getCurrentUser()async{
    return await _auth.currentUser;
  }

  Future SignOut()async{
    return await _auth.signOut();
  }

  Future deleteUser() async{
    final user = await _auth.currentUser;
    user!.delete();
  }
}