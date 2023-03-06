import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenlo_app/presentation/controllers/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx((state) => Scaffold(
          appBar: AppBar(
            title: const Text('Kenlo App'),
          ),
          body: Center(
              child: Column(
            children: [
              Tooltip(
                  message: 'SaoPauloCities',
                  child: Text(jsonEncode(controller.saoPauloCities))),
            ],
          )),
        ));
  }
}
