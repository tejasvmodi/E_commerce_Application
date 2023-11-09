import 'package:e_commerce_application/data/repository/popular_product_repo.dart';
import 'package:e_commerce_application/models/popular_products_model.dart';
import 'package:get/get.dart';

class PopularProductController  extends GetxController{

 final PopularProductRepo popularProductRepo;
 PopularProductController({
  required this.popularProductRepo
 });
 List<dynamic> _popularProduct=[];
 List<dynamic> get PopularProductList => _popularProduct;

 Future<void> getPopularProductList() async{
  Response response = await popularProductRepo.getPopularProductList();
  if(response.statusCode==200){
    print("got products");
    _popularProduct=[];
    _popularProduct.addAll(Product.fromJson(response.body).products);
    update(); 
  }else{

  }
 }


}