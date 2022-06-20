// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import '../../core/components/buttons/custom_button.dart';
import '../../core/components/buttons/facebook_button.dart';
import '../../core/components/buttons/google_button.dart';
import '../../core/components/utils/utils.dart';
import '../../core/constants/hive_keys.dart';
import '../../core/init/cache/hive_manager.dart';
import '../../core/init/lang/locale_keys.g.dart';
import '../../core/routes/app_routes.dart';
import '../../core/extension/context_extension.dart';
import '../controller/home_controller.dart';
import 'package:easy_localization/easy_localization.dart';

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
                const Spacer(),
                /*RuzgarButton(
                    buttonText: "Add user",
                    onPressed: () async {
                      await _.getUser();
                      //HiveManager.setStringValue('user', _.userName);
                      _.saveUser();
                    }),
                const Spacer(),*/
                CustomBttn(
                    buttonText: LocaleKeys.button_save.tr(),
                    onPressed: () async {
                      _.saveUser();
                      Utils.instance.showSnackBar(context,
                          content: HiveManager.instance
                                  .getStringValue(HiveKeys.USERNAME) ??
                              " ");
                    }),
                const Spacer(),
                CustomBttn(
                    height: context.height * 0.08,
                    width: context.width * 0.4,
                    radius: 15,
                    buttonText: "Go to Second Page",
                    onPressed: () {
                      Get.toNamed(Routes.SECOND);
                    }),
                Google(),
                Facebook(),
              ],
            );
          },
        ),
      ),
    );
  }
}
