import 'package:flutter_app_getx/data/post_model.dart';
import 'package:flutter_app_getx/data/product_service.dart';
import 'package:flutter_app_getx/data/response_models.dart';
import 'package:flutter_app_getx/ui/app_pages.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:banh_mi_88/data/model/cart_item_view_model.dart';
// import 'package:banh_mi_88/data/model/post_model.dart';
// import 'package:banh_mi_88/data/model/user_model.dart';
// import 'package:banh_mi_88/data/service/account_service.dart';
// import 'package:banh_mi_88/data/service/cart_service.dart';
// import 'package:banh_mi_88/modules/main/main_controller.dart';
// import 'package:banh_mi_88/modules/post_detail/post_detail_params.dart';
// import 'package:banh_mi_88/modules/product_detail/product_detail_params.dart';
// import 'package:banh_mi_88/modules/search/search_params.dart';
// import 'package:banh_mi_88/routes/app_pages.dart';
import 'package:get/get.dart';

// import 'package:banh_mi_88/data/service/product_service.dart';

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
  List<Product>? get productList => _productService.productList;
  // List<Product> get favoriteList => _productService.favoriteList;
  List<PostModel> get postPromotionList => _productService.postPromotionList;
  // UserModel get account => _accountService.myAccount!;
  // List<PostModel> postListDisplay = [];
  // List<CartItemViewModel> get cart => _cartService.cartLines;
  // List<String> postPromotionList = ["aaa", "aaaa"];

  final RxBool _isSearching = false.obs;
  bool get isSearching => _isSearching.value;
  set isSearching(value) => _isSearching.value = value;

  // late MainController mainController;

  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    // mainController = Get.find();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      await _productService.getProductList();
      isLoading.value = false;
    } catch (e) {
      print("@fetchData failt $e");
    }
    await _productService.getPostList(PostModelType.PROMOTION);
    await _productService.getCategoryList();
  }

  // void openProduct({required Product product}) {
  //   Get.toNamed(Routes.PRODUCT_DETAIL,
  //       arguments: ProductDetailParams(product: product));
  // }

  void openPost({required PostModel post}) {
    // Get.toNamed(Routes.POST, arguments: PostDetailParams(post: post));
  }

  Future<void> pullToRefresh() async {
    await fetchData();
  }

  // void openComboMember() {
  //   Get.toNamed(Routes.COMBO_MEMBER);
  // }

  // void addProduct({required Product product}) {
  //   if (_cartService.isExistInCart(cart, product)) {
  //     EasyLoading.showToast("Sản phẩm này đã được thêm vào giỏ hàng");
  //   } else {
  //     _cartService.addItemAnotherCart(product, 1);
  //     EasyLoading.showToast('Bạn đã thêm 1 ${product.name} vào giỏ hàng');
  //   }
  //   // _cartService.addItemAnotherCart(product, 1);
  //   // EasyLoading.showToast('Bạn đã thêm 1 ${product.title} vào giỏ hàng');
  // }

  // void search(String kw) async {
  //   final searchRequest = SearchRequest(kw: kw);
  //   Get.toNamed(Routes.SEARCH,
  //       arguments: SearchParams(searchRequest: searchRequest));
  // }

  // bool isFavorited(Product product) {
  //   final item =
  //       favoriteList.firstWhereOrNull(((element) => element.id == product.id));
  //   if (item != null) {
  //     return true;
  //   }
  //   return false;
  // }

  // void addProductIntoFavorites(Product product) {
  //   _productService.toggleFavoriteProduct(product);
  // }
}
