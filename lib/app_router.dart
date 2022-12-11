import 'package:book_greocer/core/strings_manager.dart';
import 'package:book_greocer/features/auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:book_greocer/features/auth/presentation/pages/signin_page.dart';
import 'package:book_greocer/features/auth/presentation/pages/signup_page.dart';
import 'package:book_greocer/features/auth/presentation/pages/store_locator_page.dart';
import 'package:book_greocer/features/home/presentation/pages/home_page.dart';
import 'package:book_greocer/features/home/presentation/pages/main_page.dart';
import 'package:book_greocer/features/onboarding/presentation/blocs/cubit/on_boarding_cubit.dart';
import 'package:book_greocer/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppStrings.onBoardingPageRouteName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<OnBoardingCubit>(
            create: (_) => OnBoardingCubit(),
            child: OnboardingPage(),
          ),
        );
      case AppStrings.signInPageRouteName:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<AuthCubit>(
                  create: (context) => AuthCubit(),
                  child: const SigninPage(),
                ));
      case AppStrings.signUpPageRouteName:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<AuthCubit>(
                  create: (context) => AuthCubit(),
                  child: const SignupPage(),
                ));
      case AppStrings.homePageRouteName:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case AppStrings.mainPageRouteName:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case AppStrings.storeLocatorPageRouteName:
        return MaterialPageRoute(builder: (_) => const StoreLocatorPage());
      default:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<OnBoardingCubit>(
            create: (_) => OnBoardingCubit(),
            child: OnboardingPage(),
          ),
        );
    }
  }
}
