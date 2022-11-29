import 'package:get/get.dart';
import 'package:clean/model/entitiy/user.dart';
import 'package:clean/repository/user_repository.dart';

class UserService extends GetxService {
  final UserRepository _userRepository = Get.find();

  Future<User?> getUserById(int id) async {
    //return await _userRepository.findById(id);
  }
}
