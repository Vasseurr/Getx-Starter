import '../../../home/model/user.dart';

abstract class HomeServiceBase {
  Future<User> getUser();
}
