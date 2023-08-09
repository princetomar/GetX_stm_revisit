import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;

  void incrementCounter() {
    counter += 1;
  }

  void decrementCounter() {
    counter -= 1;
  }
}
