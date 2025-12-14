import 'package:e_commerce_shop/app/set_up_network_client.dart';
import 'package:e_commerce_shop/features/shared/presentation/controller/main_nav_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings
{
  @override
  void dependencies()
  {
    Get.put(MainNavController());
    Get.put(setUpHttpClient());
  }
}
