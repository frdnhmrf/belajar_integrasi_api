import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/account/edit_profile_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/account/profile_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/account/setting_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/onboarding/onboarding_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/signIn/sign_in_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/signUp/sign_up_scren.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/presentasion/detail_menu_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/presentasion/menu_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/news/presentation/detail_news_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/saved/presentation/saved_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/search/presentation/search_screen.dart';
import 'package:flutter_kompas_app_clone/src/routing/main_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  account,
  signIn,
  signUp,
  onboarding,
  profile,
  editProfile,
  detailNews,
  detailMenu,
  setting,
  search,
}

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.onboarding.name,
      builder: (context, state) => const OnboardingScreen(),
      routes: [
        GoRoute(
          path: 'sign-in',
          name: AppRoute.signIn.name,
          builder: (context, state) => const SignInScreen(),
        ),
        GoRoute(
          path: 'sign-up',
          name: AppRoute.signUp.name,
          builder: (context, state) => const SignUpScreen(),
        ),
        GoRoute(
          name: AppRoute.profile.name,
          path: 'profile',
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          path: 'edit-profile',
          name: AppRoute.editProfile.name,
          builder: (context, state) => const EditProfileScreen(),
        ),
        GoRoute(
          name: AppRoute.setting.name,
          path: 'setting',
          builder: (context, state) => const SettingScreen(),
        ),
        GoRoute(
            path: 'main',
            name: AppRoute.home.name,
            builder: (context, state) => const MainScreen(),
            routes: [
              GoRoute(
                  path: 'detail-news/:id',
                  name: AppRoute.detailNews.name,
                  builder: (context, state) {
                    final query = state.params['id'];
                    return DetailNewsScreen(
                      id: query!,
                    );
                  }),
            ]),
        GoRoute(
          path: 'saved',
          builder: (context, state) => const SavedScreen(),
        ),
        GoRoute(
          path: 'menu',
          builder: (context, state) => const MenuScreen(),
          routes: [
            GoRoute(
              path: 'detail-menu/:id',
              name: AppRoute.detailMenu.name,
              builder: (context, state) {
                final id = state.params['id'];
                return DetailMenuScreen(
                  id: id!,
                );
              },
            ),
          ],
        ),
        GoRoute(
          name: AppRoute.search.name,
          path: 'search',
          builder: (context, state) => const SearchScreen(),
        ),
      ],
    ),
  ],
);
