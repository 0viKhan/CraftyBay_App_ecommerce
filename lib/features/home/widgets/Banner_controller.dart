import 'package:get/get.dart';
import 'package:e_commerce_shop/core/network_caller.dart';
import '../../../app/lib/app/config/api_urls.dart';
import 'Banner__model.dart';

class HomeBannerController extends GetxController {
  final NetworkCaller _networkCaller = NetworkCaller(
    accessToken: '',
    onUnAuthorize: () {},
  );

  List<HomeBanner> banners = [];
  bool loading = false;

  Future<void> loadBanners() async {
    loading = true;
    update();

    final res = await _networkCaller.getRequest(
      url: ApiUrls.slides,
    );

    if (res.isSuccess && res.body != null) {
      final List list = res.body!['data']['results'];

      banners = list
          .map((e) => HomeBanner.fromJson(e))
          .toList();
    }

    loading = false;
    update();
  }

  @override
  void onInit() {
    loadBanners();
    super.onInit();
  }
}
