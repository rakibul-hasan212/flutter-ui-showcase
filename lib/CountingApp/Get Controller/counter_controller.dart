import 'package:get/get.dart';

class CounterController extends GetxController{

  RxInt count = 0.obs;

  void Increment() {
      count.value++;
  }

  void Decrement() {
      count.value--;
  }
  void Clear(){
      count.value = 0;
  }
}