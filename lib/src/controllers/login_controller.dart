import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> loginWithGoogle() async {
    isLoading.value = true;
    try {
      final GoogleSignInAccount? googleuser = await _googleSignIn.signIn();
      if (googleuser == null) {
        isLoading.value = false;
        return;
      }
      final GoogleSignInAuthentication googleAuth =
          await googleuser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _auth.signInWithCredential(credential);
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }
}
