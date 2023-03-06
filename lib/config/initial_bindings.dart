import 'package:get/get.dart';
import 'package:kenlo_app/presentation/controllers/home_page_controller.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController(), permanent: true);
  }
}
