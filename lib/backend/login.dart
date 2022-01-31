import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LogniController extends GetxController {
  final _googleSign = GoogleSignIn();

  var googleaccount = Rx<GoogleSignInAccount?>(null);

  login() async {
    googleaccount.value = await _googleSign.signIn();
  }
}
