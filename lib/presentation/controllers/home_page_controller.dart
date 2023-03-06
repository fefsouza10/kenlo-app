import 'package:get/get.dart';
import 'package:kenlo_app/data/models/sao_paulo_cities_model.dart';
import 'package:kenlo_app/data/services/cities_service.dart';

class HomePageController extends GetxController with StateMixin {
  CitiesService citiesService = Get.put(CitiesService());
  SaoPauloCities? saoPauloCities;

  @override
  Future<void> onInit() async {
    super.onInit();
    change(null, status: RxStatus.loading());
    saoPauloCities = await fetchSaoPauloCities();
    change(null, status: RxStatus.success());
  }

  Future<SaoPauloCities> fetchSaoPauloCities() async {
    return await citiesService.fetchSaoPauloCities();
  }
}
