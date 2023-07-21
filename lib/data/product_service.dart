
import 'package:flutter_app_getx/api/base_response.dart';
import 'package:flutter_app_getx/data/base_service.dart';
import 'package:flutter_app_getx/data/category_model.dart';
import 'package:flutter_app_getx/data/common_util.dart';
import 'package:flutter_app_getx/api/local_service.dart';
import 'package:flutter_app_getx/data/post_model.dart';
import 'package:flutter_app_getx/data/response_models.dart';
import 'package:get/get.dart';

class ProductService extends BaseService  {
  ProductService({required LocalService localService})
      : _localService = localService;
  final LocalService _localService;

  final Rx<List<CategoryModel>> _categoryList = Rx<List<CategoryModel>>([]);
  get categoryList => _categoryList.value;

  final Rx<List<Product>?> _productList = Rx<List<Product>?>(null);
  List<Product>? get productList => _productList.value;

  final Rx<List<Product>> _favoriteList = Rx<List<Product>>([]);
  get favoriteList => _favoriteList.value;
  set favoriteList(value) => _favoriteList.value = value;

  final Rx<Map<String, List<Product>>> _productListMap = Rx({});
  Map<String, List<Product>> get productListMap => _productListMap.value;

  final _postPromotionList = Rx<List<PostModel>>([]);
  List<PostModel> get postPromotionList => _postPromotionList.value;

  final _postNewList = Rx<List<PostModel>>([]);
  List<PostModel> get postNewList => _postNewList.value;

  final _postTermList = Rx<List<PostModel>>([]);
  List<PostModel> get postTermList => _postTermList.value;

  Future<List<CategoryModel>> getCategoryList() async {

    return _categoryList.value = [
      CategoryModel(
          createdAt: '',
          createdAtUnixTimestamp: '',
          id: '',
          isHot: true,
          banner: 'https://babartravel.com/upload/images/1560514555.jpg',
          image: 'https://babartravel.com/upload/images/1560514555.jpg',
          order: 1,
          status: true,
          title: 'Bánh mì dài',
          updatedAt: ''),
      CategoryModel(
          createdAt: '',
          createdAtUnixTimestamp: '',
          id: '',
          isHot: true,
          banner:
              'https://www.thechillisource.net/wp-content/uploads/2019/10/an-banh-mi-co-map-khong.jpg',
          image:
              'https://www.thechillisource.net/wp-content/uploads/2019/10/an-banh-mi-co-map-khong.jpg',
          order: 2,
          status: true,
          title: 'Bánh mì đặc ruột',
          updatedAt: ''),
    ];
  }

  Future<List<Product>> getProductListByCategory(String categoryId) async {
    return [];
  }

  Future<void> getProductList() async {
    try {
      final productList = await client.getProductList();
      if (productList.isNotEmpty) {
        _productList.value = productList;
      } else {
        _productList.value = [];
      }
      print("@Get product list success, got ${productList.length}");
    } catch (e) {
      print("@Get product list fail.");
    }

  }

  Future<void> getPostList(PostModelType type) async {
    BaseResponse response = await client.getPostList({"fields": "[\"\$all\"]"});
    List<PostModel> items =
        response.parseList<PostModel>((item) => PostModel.fromJson(item));
    //promotion
    _postPromotionList.value =
        items.where((i) => i.type == "PROMOTION").toList();
    //news
    _postNewList.value = items.where((i) => i.type == "NEWS").toList();
    //terms
    _postTermList.value = items.where((i) => i.type == "TERMS").toList();
  }

  Future<List<Product>> searchProduct(SearchRequest searchRequest) async {
    final categoryFilter = searchRequest.categoryId?.isNotEmpty == true
        ? {"category_id": searchRequest.categoryId}
        : null;
    final kwFilter = searchRequest.kw?.isNotEmpty == true
        ? {
            "\$or": [
              {
                "title_en": {
                  "\$iLike":
                      "%${CommonUtil().removeDiacritics(searchRequest.kw!)}%"
                }
              },
              {
                "description": {"\$iLike": "%${searchRequest.kw}%"}
              }
            ]
          }
        : null;
    final maxPriceFilter = searchRequest.maxPrice != null
        ? {
            "price": {"\$lt": searchRequest.maxPrice}
          }
        : null;
    final minPriceFilter = searchRequest.minPrice != null
        ? {
            "price": {"\$gt": searchRequest.minPrice}
          }
        : null;

    final query = {
      "\$and": [
        if (categoryFilter != null) ...[categoryFilter],
        if (kwFilter != null) ...[kwFilter],
        if (minPriceFilter != null) ...[minPriceFilter],
        if (maxPriceFilter != null) ...[maxPriceFilter]
      ]
    };

    return [];
  }

  void toggleFavoriteProduct(Product product) {
    final item = _favoriteList.value
        .firstWhereOrNull((element) => element.id == product.id);

    if (item != null) {
      _favoriteList.update((val) {
        _favoriteList.value.remove(product);
      });
    } else {
      _favoriteList.update((val) {
        _favoriteList.value.add(product);
      });
    }

    // _localService.saveFavoriteProducts(
    //     LocalService.FAVORITE_PRODUCTS, favoriteList);
  }

  void cleanLocal() {
    _favoriteList.value.clear();
    // _localService.saveFavoriteProducts(
    //     LocalService.FAVORITE_PRODUCTS, _favoriteList.value);
  }
}

class SearchRequest {
  String? size;
  String? color;
  String? kw;
  double? minPrice;
  double? maxPrice;
  String? categoryId;
  SearchRequest({
    this.size,
    this.color,
    this.kw,
    this.minPrice,
    this.maxPrice,
    this.categoryId,
  });
  SearchRequest copyWith(
      {String? size,
      String? color,
      String? kw,
      double? minPrice,
      double? maxPrice,
      String? categoryId}) {
    return SearchRequest(
      size: size ?? this.size,
      color: color ?? this.color,
      kw: kw ?? this.kw,
      minPrice: minPrice ?? this.minPrice,
      maxPrice: maxPrice ?? this.maxPrice,
      categoryId: categoryId ?? this.categoryId,
    );
  }
}
