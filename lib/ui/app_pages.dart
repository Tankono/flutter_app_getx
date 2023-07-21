import 'package:flutter_app_getx/ui/demo/demo_binding.dart';

import 'demo/demo_page.dart';
import 'main/main_binding.dart';
import 'main/main_page.dart';
import 'package:get/get.dart';
import 'home/home_binding.dart';
import 'home/home_page.dart';
import 'splash/splash_binding.dart';
import 'splash/splash_page.dart';

abstract class Routes {
  static const DEMO = '/demo';
  static const SPLASH = '/splash';
  static const LOGIN = '/login';
  static const MAIN = '/main';
  static const HOME = '/home';
  static const CATEGORY = '/category';
  static const FAVORITE = '/favorite';
  static const PRODUCTS = '/products';
  static const PRODUCT_DETAIL = '/productDetail';
  static const NOTIFICATION = '/notification';
  static const NOTIFICATION_DETAIL = '/notificationDetail';
  static const PROFILE = '/profile';
  static const UPDATE_PROFILE = '/updateProfile';
  static const REGISTER = '/register';
  static const VERIFY_ACCOUNT = '/verifyAccount';
  static const CART = '/cart';
  static const CART_INFO = '/cartInfo';
  static const WELCOME = '/welcome';
  static const ADDRESS = '/address';
  static const EDIT_ADDRESS = '/editAddress';
  static const FEEDBACK = '/feedback';
  static const MY_ORDERS = '/myOrders';
  static const PAYMENT_SUCCESS = '/paymentSuccess';
  static const POST = '/post';
  static const ORDER_DETAIL = '/orderDetail';
  static const SUPPORT = '/support';
  static const COMBO_MEMBER = '/comboMember';
  static const SEARCH = '/search';
  static const SPIN_WHEEL = '/spinWheel';
}

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    // GetPage(
    //   name: Routes.LOGIN,
    //   page: () => LoginPage(),
    //   binding: LoginBinding(),
    // ),
    GetPage(
        name: Routes.MAIN,
        page: () => const MainPage(),
        binding: MainBinding(),
        transition: Transition.upToDown),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
     GetPage(
      name: Routes.DEMO,
      page: () => DemoPage(),      
      binding: DemoBinding(),
    ),
    // GetPage(
    //   name: Routes.CATEGORY,
    //   page: () => const CategoryPage(),
    //   binding: CategoryBinding(),
    // ),
    // GetPage(
    //   name: Routes.FAVORITE,
    //   page: () => FavoritePage(),
    //   binding: FavoriteBinding(),
    // ),
    // GetPage(
    //     name: Routes.PRODUCTS,
    //     page: () => ProductsPage(),
    //     binding: ProductsBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //     name: Routes.PRODUCT_DETAIL,
    //     page: () => const ProductDetailPage(),
    //     binding: ProductDetailBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //   name: Routes.PROFILE,
    //   page: () => const ProfilePage(),
    //   binding: ProfileBinding(),
    // ),
    // GetPage(
    //     name: Routes.NOTIFICATION,
    //     page: () => const NotificationPage(),
    //     binding: NotificationBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //     name: Routes.NOTIFICATION_DETAIL,
    //     page: () => const NotificationDetailPage(),
    //     binding: NotificationDetailBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //     name: Routes.UPDATE_PROFILE,
    //     page: () => UpdateProfilePage(),
    //     binding: UpdateProfileBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //     name: Routes.REGISTER,
    //     page: () => const RegisterPage(),
    //     binding: RegisterBinding(),
    //     transition: Transition.downToUp),
    // GetPage(
    //     name: Routes.VERIFY_ACCOUNT,
    //     page: () => VerifyAccountPage(),
    //     binding: VerifyAccountBinding(),
    //     transition: Transition.downToUp),
    // GetPage(
    //     name: Routes.CART,
    //     page: () => const CartPage(),
    //     binding: CartBinding(),
    //     transition: Transition.downToUp),
    // GetPage(
    //     name: Routes.CART_INFO,
    //     page: () => const CartInfoPage(),
    //     binding: CartInfoBinding(),
    //     transition: Transition.leftToRight),
    // GetPage(
    //     name: Routes.WELCOME,
    //     page: () => WelcomePage(),
    //     binding: WelcomeBinding(),
    //     transition: Transition.leftToRight),
    // GetPage(
    //     name: Routes.ADDRESS,
    //     page: () => const AddressPage(),
    //     binding: AddressBinding(),
    //     transition: Transition.leftToRight),
    // GetPage(
    //     name: Routes.FEEDBACK,
    //     page: () => const FeedbackPage(),
    //     binding: FeedbackBinding(),
    //     transition: Transition.leftToRight),
    // GetPage(
    //     name: Routes.MY_ORDERS,
    //     page: () => const MyOrdersPage(),
    //     binding: MyOrdersBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //     name: Routes.PAYMENT_SUCCESS,
    //     page: () => const PaymentSuccessPage(),
    //     binding: PaymentSuccessBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //     name: Routes.POST,
    //     page: () => PostDetailPage(),
    //     binding: PostDetailBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //     name: Routes.EDIT_ADDRESS,
    //     page: () => EditAddressPage(),
    //     binding: EditAddressBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //     name: Routes.ORDER_DETAIL,
    //     page: () => const OrderDetailPage(),
    //     binding: OrderDetailBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //     name: Routes.SUPPORT,
    //     page: () => const SupportPage(),
    //     binding: SupportBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //     name: Routes.COMBO_MEMBER,
    //     page: () => const ComboMemberPage(),
    //     binding: ComboMemberBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //     name: Routes.SEARCH,
    //     page: () => SearchPage(),
    //     binding: SearchBinding(),
    //     transition: Transition.rightToLeft),
    // GetPage(
    //     name: Routes.SPIN_WHEEL,
    //     page: () => SpinWheelPage(),
    //     binding: SpinWheelBinding(),
    //     transition: Transition.rightToLeft),
  ];
}
