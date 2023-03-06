import 'package:get/get.dart';

import '../presentation/pages/home_page.dart';

class RoutesConfig {
  static List<GetPage> routes() =>
      [GetPage(name: '/', page: () => const HomePage())];
}
