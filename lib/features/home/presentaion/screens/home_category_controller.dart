import 'package:get/get.dart';
import 'package:e_commerce_shop/core/network_caller.dart';
import '../../../../app/lib/app/config/api_urls.dart';
import 'home_category_model.dart';

class HomeCategoryController extends GetxController {
  final NetworkCaller _networkCaller = NetworkCaller(
    accessToken: '',
    onUnAuthorize: () {},
  );

  bool loading = false;
  List<HomeCategory> categories = [];

  @override
  void onInit() {
    super.onInit();
    loadCategories();
  }

  Future<void> loadCategories() async {
    loading = true;
    update();

    final res = await _networkCaller.getRequest(
      url: ApiUrls.categories,
    );

    if (res.isSuccess && res.body != null) {
      final List list = res.body!['data']['results'];
      categories = list.map((e) => HomeCategory.fromJson(e)).toList();
    }

    loading = false;
    update();
  }
}
