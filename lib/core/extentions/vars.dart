import 'package:get/get.dart';

extension IsNotNull on Response? {
  bool isNotNull() => this != null;
}
