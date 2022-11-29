import 'package:clean/helper/exception_handler.dart';
import 'package:flutter/material.dart';
import 'package:clean/materialapp.dart';
import 'package:clean/configuration/bean_configuration.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ExceptionHandler.exceptionHandler();
  await BeanConfiguration().dependencies();
  runApp(const MyApp());
}
