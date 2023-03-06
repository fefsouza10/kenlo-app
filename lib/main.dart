import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenlo_app/config/routes_config.dart';

import 'config/initial_bindings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kenlo App',
      theme: ThemeData(primarySwatch: Colors.red),
      getPages: RoutesConfig.routes(),
    );
  }
}
