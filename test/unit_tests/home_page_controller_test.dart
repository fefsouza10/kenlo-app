import 'package:flutter_test/flutter_test.dart';
import 'package:kenlo_app/data/models/sao_paulo_cities_model.dart';
import 'package:kenlo_app/presentation/controllers/home_page_controller.dart';

void main() async {
  final HomePageController controller = HomePageController();

  SaoPauloCities? saoPauloCities = await controller.fetchSaoPauloCities();

  group('Testing fetch Sao Paulo Cities from API', () {
    test('Checking if the first item is \'Campinas\'', () {
      expect(saoPauloCities.items![0].cidade, 'Campinas',
          reason: 'The first item should be \'Campinas\'.');
    });
  });
}
