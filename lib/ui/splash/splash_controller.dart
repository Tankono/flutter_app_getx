import '../app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  // SplashController(
  //     {required AuthService authService,
  //     required AccountService accountService,
  //     required LocalService localService,
  //     required ProductService productService,
  //     required CartService cartService,
  //     required NotificationService messageService})
  //     : _authService = authService,
  //       _localService = localService,
  //       _productService = productService,
  //       _cartService = cartService,
  //       _messageService = messageService,
  //       _accountService = accountService;

  // final AuthService _authService;
  // final AccountService _accountService;
  // final LocalService _localService;
  // final NotificationService _messageService;
  // final ProductService _productService;
  // final CartService _cartService;

  Future start() async {
    print('hello');
    // await _localService.init;

    // _messageService.setupLocalNotification();
    // _messageService.setupFirebaseMessaging();
    // _messageService.loadUnReadNotice();
    fetchDataLocal();
    await Future.delayed(const Duration(seconds: 2));

    bool isLogged = await _autoLogin();
    // ignore: avoid_print
    print(isLogged ? "You have logged!" : "Not logged yet");

    // if (isLogged) {
    Get.offAllNamed(Routes.MAIN);
    // } else if (PreferenceUtils.isFirstTimeUse()) {
    //   Get.offAllNamed(Routes.WELCOME);
    // } else {
    //   Get.offAllNamed(Routes.LOGIN);
    // }
    // Get.offAllNamed(Routes.HOME);
    return Future;
  }

  void fetchDataLocal() {
    // _productService.favoriteList =
    //     _localService.getFavoriteProducts(LocalService.FAVORITE_PRODUCTS);
    // _cartService.cartLines =
    //     _localService.getCartProduct(LocalService.CART_PRODUCTS);
    // _cartService.cartLinesTemp =
    //     _localService.getCartProduct(LocalService.ANOTHER_CART_PRODUCTS);
  }

  Future<bool> _autoLogin() async {
    try {
      // String username = PreferenceUtils.getString(StorageKey.USERNAME);
      // String password = PreferenceUtils.getString(StorageKey.PASSWORD);
      // final userResponse =
      //     await _authService.loginWithUsernamePassword(username, password);
      // _accountService.setAccount(UserModel(
      //     email: userResponse.email,
      //     username: userResponse.nickname,
      //     displayName: userResponse.displayName));
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  void onInit() async {
    super.onInit();
    await start();
  }
}
