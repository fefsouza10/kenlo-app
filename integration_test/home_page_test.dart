import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:kenlo_app/config/initial_bindings.dart';
import 'package:kenlo_app/main.dart';
import 'package:kenlo_app/presentation/pages/home_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Testing overall app functionalities',
      (WidgetTester widgetTester) async {
    WidgetsFlutterBinding.ensureInitialized();
    InitialBindings().dependencies();
    await widgetTester.pumpWidget(const MyApp());
    await widgetTester.pump(const Duration(seconds: 5));

    expect(find.byType(HomePage), findsOneWidget);

    expect(find.byTooltip('SaoPauloCities'), findsOneWidget);
  });
}
