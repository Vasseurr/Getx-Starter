import 'package:get/get.dart';
import '../../core/constants/hive_keys.dart';
import '../../core/init/cache/hive_manager.dart';
import '../../home/repository/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository _repository;
  final RxString _userName = "".obs;
  final RxBool _isLoading = false.obs;
  RxList<String> searchTerms = RxList();
  RxList<String> tempSearchTerms = RxList();
  HomeController(this._repository);

  set userName(value) => _userName.value = value;
  get userName => _userName.value;

  set isLoading(value) => _isLoading.value = value;
  get isLoading => _isLoading.value;

  changeLoading() => _isLoading.value = !_isLoading.value;

  @override
  void onInit() {
    super.onInit();
    changeLoading();
    searchTerms.value = [
      'Apple',
      'Banana',
      'Pear',
      'Watermelons',
      'Oranges',
      'Blueberries',
      'Strawberries',
      'Raspberries'
    ];
    tempSearchTerms.value = [
      'Apple',
      'Banana',
      'Pear',
      'Watermelons',
      'Oranges',
      'Blueberries',
      'Strawberries',
      'Raspberries'
    ];
  }

  @override
  void onReady() {
    super.onReady();
    changeLoading();
  }

  getUser() async {
    var result = await _repository.getUser();
    _userName.value = result.name!;
  }

  changeValue() {
    userName = "Template";
  }

  saveUser() async {
    HiveManager.instance.setStringValue(HiveKeys.USERNAME, userName);
  }

  getFromHiveManager() {
    return HiveManager.instance.getStringValue(HiveKeys.USERNAME);
  }
}
