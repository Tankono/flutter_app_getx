import 'package:get/get.dart';

class ProductRepo {
  final ProductData data = Get.find();

  getProductList() {
    data.getProducts();
  }
}

abstract class ProductData {
  getProducts();
}

class ProductMock implements ProductData {
  @override
  getProducts() {
    print('get product from:Mock');
  }
}

class ProductApi implements ProductData {
  @override
  getProducts() {
    print('get product from:Api');
  }
}
