import 'package:get/get.dart';
import 'package:katsuu/model/cat.dart';
import 'package:katsuu/services/cats_services.dart';

class CatController extends GetxController {
  var isLoading = true.obs;
  var cetegoryList = <Category>[].obs;
  @override
  void onInit() {
    fetchCategory();
    super.onInit();
  }

  void fetchCategory() async {
    cetegoryList.value = await CatsServices.fetchCategory();
    isLoading.value = false;
    print(cetegoryList);
  }
}
