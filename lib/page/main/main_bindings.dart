import 'package:get/instance_manager.dart';
import 'package:todoapp/page/auth/sign_in/sign_in_controller.dart';
import 'package:todoapp/page/auth/sign_up/sign_up_controller.dart';
import 'package:todoapp/page/main/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<SignInController>(() => SignInController());
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}
