import 'package:flutter_app_getx/data/post_model.dart';
import 'package:flutter_app_getx/data/product_service.dart';
import 'package:flutter_app_getx/data/response_models.dart';
import 'package:flutter_app_getx/json/JsonHelper.dart';
import 'package:flutter_app_getx/json/ProductDataModel.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // HomeController();
  HomeController({
    required ProductService productService,
    //   required AccountService accountService,
    //   required CartService cartService,
  }) : _productService = productService;
  //       _accountService = accountService,
  //       _cartService = cartService;

  final ProductService _productService;
  // final CartService _cartService;
  // final AccountService _accountService;
  // List<Product>? get productList => _productService.productList;
  // List<Product> get favoriteList => _productService.favoriteList;
  List<PostModel> get postPromotionList => _productService.postPromotionList;

  final RxBool _isSearching = false.obs;
  bool get isSearching => _isSearching.value;
  set isSearching(value) => _isSearching.value = value;

  // late MainController mainController;
  Json<ProductDataModel> jb = Json<ProductDataModel>(ProductDataModel.new);

  RxBool isLoading = true.obs;

  List<Product>? get productList => products;

  List<Product>? products;

  @override
  void onInit() {
    super.onInit();
    // mainController = Get.find();
    fetchData();
  }

  Product mapTemp(ProductDataModel entity) {
    return Product(
        id: 0,
        name: 'entity.name!',
        permalink: 'permalink',
        type: 'type',
        status: 'status',
        description: 'description',
        shortDescription: 'shortDescription',
        price: "1",
        regularPrice: '3',
        salePrice: '3',
        stockStatus: 'stockStatus');
  }

  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      // await _productService.getProductList();
      // isLoading.value = false;

      List<ProductDataModel> list =
          await jb.getList('assets/json/products.json');
      products = list.map((e) => mapTemp(e)).toList();
      isLoading.value = false;
    } catch (e) {
      print("@fetchData failt $e");
    }
    update();
    // await _productService.getPostList(PostModelType.PROMOTION);
    // await _productService.getCategoryList();
  }

  void openPost({required PostModel post}) {
    // Get.toNamed(Routes.POST, arguments: PostDetailParams(post: post));
  }

  Future<void> pullToRefresh() async {
    await fetchData();
  }
}
