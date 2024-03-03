import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/features/auth/presentation/pages/login/sign_in_page.dart';
import 'package:bir_umma/features/main/presentation/pages/home/daarat_page.dart';
import 'package:bir_umma/features/main/presentation/pages/home/home_page.dart';
import 'package:bir_umma/features/main/presentation/pages/main/main_page.dart';
import 'package:bir_umma/features/profile/presentation/pages/profile/profile_page.dart';
import 'package:bir_umma/features/question_answer/presentation/pages/question_answer/question_answer_page.dart';
import 'package:bir_umma/features/quran/presentation/pages/quran/quran_page.dart';
import 'package:bir_umma/features/zikir/presentation/pages/zikir/zikir_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: QuestionAnswerRoute.page),
        AutoRoute(page: QuranRoute.page),
        AutoRoute(page: ZikirRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: SignInRoute.page),
        // AutoRoute(page: DaaratRoute.page),
      ];
}
