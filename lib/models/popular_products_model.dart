// ignore_for_file: unnecessary_new

class Product{
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProductsModel> _products;
  List<ProductsModel> get products=>_products;

  Product({required totalSize,required offset,required typeId, required products}){
   this._totalSize=totalSize;
   this._typeId=typeId;
   this._offset=offset;
   this._products= products;

  }

  Product.fromJson(Map<String , dynamic> json){
    _totalSize = json['total_size'];
    _typeId=json['type_id'];
    _offset=json['offset'];
    if(json['products']!=null){
      _products=<ProductsModel>[];
      json['products'].forEach((e){
        _products!.add(ProductsModel.fromJson(e));
      });
    }
  }
}

class ProductsModel {
   int? id;
   String? name;
   String? description;
   int? price;
   int? stars;
   String? img;
   String? location;
   String? createdAt;
   String? updatedAt;
   int? typeId;

   ProductsModel(
    {
      this.id,
      this.name,
      this.description,
      this.price,
      this.stars,
      this.img,
      this.location,
      this.createdAt,
      this.updatedAt,
      this.typeId
    }
   );

  ProductsModel.fromJson(Map<String,dynamic> json){
    id=json['id'];
    name=json['name'];
    description=json['description'];
    price=json['price'];
    stars=json['stars'];
    img=json['img'];
    price=json['price'];
    location=json['location'];
    createdAt=json['createdAt'];
    updatedAt=json['updatedAt'];
    typeId=json['typeId']
  ;
  }
}