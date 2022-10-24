import 'package:get/instance_manager.dart';
import 'package:todoapp/page/auth/sign_up/sign_up_controller.dart';
import 'package:todoapp/page/main/main_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
    Get.lazyPut<MainController>(() => MainController());
  }
}
