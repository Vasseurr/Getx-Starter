import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter/core/components/text/vasseurr_text_form_field.dart';
import 'package:getx_starter/core/components/widgets/custom_appbar.dart';
import 'package:getx_starter/core/components/widgets/custom_circular_progress_indicator.dart';
import 'package:getx_starter/core/components/widgets/custom_padding.dart';
import 'package:getx_starter/core/constants/padding_values.dart';
import '../../core/extension/context_extension.dart';
import '../../home/controller/home_controller.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find<HomeController>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppBar(),
        body: Obx(
          () => homeController.isLoading == true
              ? const CustomCircularProgressIndicator()
              : _body(context, homeController),
        ));
  }

  Container _body(BuildContext context, HomeController homeController) {
    return Container(
      margin: EdgeInsets.all(context.mediumHeightValue),
      child: Column(
        children: [
          _search(homeController),
          SizedBox(height: CustomPaddingValues.mediumH),
          _items(homeController)
        ],
      ),
    );
  }

  ListView _items(HomeController homeController) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: homeController.tempSearchTerms.length,
      itemBuilder: (context, index) {
        return CustomPadding.instance.allPadding(
            value: 15, child: Text(homeController.tempSearchTerms[index]));
      },
    );
  }

  VasseurrTFF _search(HomeController homeController) {
    return VasseurrTFF(
        autoFocus: true,
        prefixIcon: const Icon(Icons.search),
        hintText: "Search",
        onChanged: (value) =>
            searchResults(controller: homeController, searchingText: value));
  }

  searchResults(
      {required HomeController controller, required String searchingText}) {
    List<String> tempSearchList = [];
    tempSearchList.addAll(controller.tempSearchTerms);
    if (searchingText.isNotEmpty) {
      List<String> dummyListData = [];
      for (var item in tempSearchList) {
        if (item.toLowerCase().contains(searchingText.toLowerCase())) {
          dummyListData.add(item);
        }
      }
      controller.tempSearchTerms.clear();
      controller.tempSearchTerms.addAll(dummyListData);
      return;
    } else {
      controller.tempSearchTerms.clear();
      controller.tempSearchTerms.addAll(controller.searchTerms);
    }
  }
}
