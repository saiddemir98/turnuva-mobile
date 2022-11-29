import 'package:clean/model/locale/settings.dart';
import 'package:clean/model/entitiy/user.dart';

abstract class Global {
  static User? globalUser;
  static Settings settings = Settings();
}
