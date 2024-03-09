import 'package:auto_route/auto_route.dart';
import 'package:bir_umma/features/auth/presentation/pages/sign_in_page.dart';
import 'package:bir_umma/features/auth/presentation/pages/sign_up_page.dart';
import 'package:bir_umma/features/main/presentation/pages/home/daarat_page.dart';
import 'package:bir_umma/features/main/presentation/pages/home/home_page.dart';
import 'package:bir_umma/features/main/presentation/pages/main/main_page.dart';
import 'package:bir_umma/features/profile/presentation/pages/profile/pikir_page.dart';
import 'package:bir_umma/features/profile/presentation/pages/profile/profile_page.dart';
import 'package:bir_umma/features/question_answer/presentation/pages/premium/premium_page.dart';
import 'package:bir_umma/features/question_answer/presentation/pages/question_answer/question_answer.dart';
import 'package:bir_umma/features/quran/presentation/pages/quran/quran_page.dart';
import 'package:bir_umma/features/zikir/presentation/pages/zikir/zikir_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: QuranRoute.page),
        AutoRoute(page: ZikirRoute.page),
        AutoRoute(page: PikirRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: PremiumRoute.page),
        AutoRoute(page: QuestionAndAnswerRoute.page),
        AutoRoute(page: QuestionRoute.page),
        AutoRoute(page: AnswerRoute.page),
        AutoRoute(page: SignInRoute.page, initial: true),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: DaaratRoute.page),
      ];
}
