
import 'BaseModel.dart';

class ProductDataModel extends BaseModel {
  int? id;
  String? name;
  String? category;
  String? imageURL;
  String? oldPrice;
  String? price;

  ProductDataModel(
      {this.id,
      this.name,
      this.category,
      this.imageURL,
      this.oldPrice,
      this.price});

  @override
  void mapJson(data) {
    final json = data as Map<String, dynamic>;
    id = json['id'];
    name = json['name'];
    category = json['category'];
    imageURL = json['imageUrl'];
    oldPrice = json['oldPrice'];
    price = json['price'];
  }
}