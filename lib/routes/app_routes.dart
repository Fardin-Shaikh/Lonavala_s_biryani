import 'package:flutter/material.dart';
import 'package:lonavala_s_biryani/presentation/splash_screen/splash_screen.dart';
import 'package:lonavala_s_biryani/presentation/welcome_screen/welcome_screen.dart';
import 'package:lonavala_s_biryani/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:lonavala_s_biryani/presentation/login_screen/login_screen.dart';
import 'package:lonavala_s_biryani/presentation/vefification_code_screen/vefification_code_screen.dart';
import 'package:lonavala_s_biryani/presentation/resset_password_screen/resset_password_screen.dart';
import 'package:lonavala_s_biryani/presentation/phone_registration_screen/phone_registration_screen.dart';
import 'package:lonavala_s_biryani/presentation/side_menu_screen/side_menu_screen.dart';
import 'package:lonavala_s_biryani/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:lonavala_s_biryani/presentation/food_details_screen/food_details_screen.dart';
import 'package:lonavala_s_biryani/presentation/category_screen/category_screen.dart';
import 'package:lonavala_s_biryani/presentation/cart_screen/cart_screen.dart';
import 'package:lonavala_s_biryani/presentation/my_orders_upcoming_tab_container_screen/my_orders_upcoming_tab_container_screen.dart';
import 'package:lonavala_s_biryani/presentation/favorites_food_items_tab_container_screen/favorites_food_items_tab_container_screen.dart';
import 'package:lonavala_s_biryani/presentation/profile_screen/profile_screen.dart';
import 'package:lonavala_s_biryani/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:lonavala_s_biryani/presentation/rating_screen/rating_screen.dart';
import 'package:lonavala_s_biryani/presentation/reviews_screen/reviews_screen.dart';
import 'package:lonavala_s_biryani/presentation/review_resturent_screen/review_resturent_screen.dart';
import 'package:lonavala_s_biryani/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String vefificationCodeScreen = '/vefification_code_screen';

  static const String ressetPasswordScreen = '/resset_password_screen';

  static const String phoneRegistrationScreen = '/phone_registration_screen';

  static const String sideMenuScreen = '/side_menu_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenTabContainerPage =
      '/home_screen_tab_container_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String foodDetailsScreen = '/food_details_screen';

  static const String categoryScreen = '/category_screen';

  static const String cartScreen = '/cart_screen';

  static const String myOrdersUpcomingPage = '/my_orders_upcoming_page';

  static const String myOrdersUpcomingTabContainerScreen =
      '/my_orders_upcoming_tab_container_screen';

  static const String favoritesFoodItemsPage = '/favorites_food_items_page';

  static const String favoritesFoodItemsTabContainerScreen =
      '/favorites_food_items_tab_container_screen';

  static const String profileScreen = '/profile_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String ratingScreen = '/rating_screen';

  static const String reviewsScreen = '/reviews_screen';

  static const String reviewResturentScreen = '/review_resturent_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        welcomeScreen: WelcomeScreen.builder,
        signUpScreen: SignUpScreen.builder,
        loginScreen: LoginScreen.builder,
        vefificationCodeScreen: VefificationCodeScreen.builder,
        ressetPasswordScreen: RessetPasswordScreen.builder,
        phoneRegistrationScreen: PhoneRegistrationScreen.builder,
        sideMenuScreen: SideMenuScreen.builder,
        homeScreenContainerScreen: HomeScreenContainerScreen.builder,
        foodDetailsScreen: FoodDetailsScreen.builder,
        categoryScreen: CategoryScreen.builder,
        cartScreen: CartScreen.builder,
        myOrdersUpcomingTabContainerScreen:
            MyOrdersUpcomingTabContainerScreen.builder,
        favoritesFoodItemsTabContainerScreen:
            FavoritesFoodItemsTabContainerScreen.builder,
        profileScreen: ProfileScreen.builder,
        addNewAddressScreen: AddNewAddressScreen.builder,
        ratingScreen: RatingScreen.builder,
        reviewsScreen: ReviewsScreen.builder,
        reviewResturentScreen: ReviewResturentScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
