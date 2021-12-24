// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter/core/components/buttons/custom_button.dart';
import 'package:getx_starter/core/components/buttons/facebook_button.dart';
import 'package:getx_starter/core/components/buttons/google_button.dart';
import 'package:getx_starter/core/components/widgets/search_delegate.dart';
import 'package:getx_starter/core/extension/context_extension.dart';
import 'package:getx_starter/core/routes/app_routes.dart';
import 'package:getx_starter/home/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(context.mediumHeightValue),
        child: GetX<HomeController>(
          initState: (state) async {
            Get.find<HomeController>().getUser();
            //box = await Hive.openBox('user');
          },
          builder: (_) {
            return Column(
              children: [
                Center(
                  //child: Obx(() => Text(controller.userName)),
                  child: Text(_.userName),
                ),
                Divider(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Bir şey ara"),
                    IconButton(
                        onPressed: () {
                          showSearch(
                              context: context,
                              delegate: CustomSearchDelegate([
                                'Apple',
                                'Banana',
                                'Pear',
                                'Watermelons',
                                'Oranges',
                                'Blueberries',
                                'Strawberries',
                                'Raspberries'
                              ]));
                        },
                        icon: const Icon(Icons.search))
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
