import 'package:e_commerce_application/controllers/popular_product_controller.dart';
import 'package:e_commerce_application/data/api/api_client.dart';
import 'package:e_commerce_application/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async{

  Get.lazyPut(() => ApiClient(appBaseUrl: "http://localhost"));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

}