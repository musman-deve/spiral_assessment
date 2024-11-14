import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool showLoginPass = false.obs;

  void changeObSecureStatus() => showLoginPass.value = !showLoginPass.value;
}
