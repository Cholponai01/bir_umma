part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AnswerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AnswerPage(),
      );
    },
    DaaratRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DaaratPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    PikirRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PikirPage(),
      );
    },
    PremiumRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PremiumPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    QuestionAndAnswerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QuestionAndAnswerPage(),
      );
    },
    QuestionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QuestionPage(),
      );
    },
    QuranRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QuranPage(),
      );
    },
    // SignInRoute.name: (routeData) {
    //   return AutoRoutePage<dynamic>(
    //     routeData: routeData,
    //     child: const SignInPage(),
    //   );
    // },
    // SignUpRoute.name: (routeData) {
    //   return AutoRoutePage<dynamic>(
    //     routeData: routeData,
    //     child: const SignUpPage(),
    //   );
    // },
    ZikirRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ZikirPage(),
      );
    },
  };
}

/// [AnswerPage]
class AnswerRoute extends PageRouteInfo<void> {
  const AnswerRoute({List<PageRouteInfo>? children})
      : super(
          AnswerRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnswerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// [DaaratPage]
class DaaratRoute extends PageRouteInfo<void> {
  const DaaratRoute({List<PageRouteInfo>? children})
      : super(
          DaaratRoute.name,
          initialChildren: children,
        );

  static const String name = 'DaaratRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PikirPage]
class PikirRoute extends PageRouteInfo<void> {
  const PikirRoute({List<PageRouteInfo>? children})
      : super(
          PikirRoute.name,
          initialChildren: children,
        );

  static const String name = 'PikirRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PremiumPage]
class PremiumRoute extends PageRouteInfo<void> {
  const PremiumRoute({List<PageRouteInfo>? children})
      : super(
          PremiumRoute.name,
          initialChildren: children,
        );

  static const String name = 'PremiumRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QuestionAndAnswerPage]
class QuestionAndAnswerRoute extends PageRouteInfo<void> {
  const QuestionAndAnswerRoute({List<PageRouteInfo>? children})
      : super(
          QuestionAndAnswerRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionAndAnswerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QuestionPage]
class QuestionRoute extends PageRouteInfo<void> {
  const QuestionRoute({List<PageRouteInfo>? children})
      : super(
          QuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QuranPage]
class QuranRoute extends PageRouteInfo<void> {
  const QuranRoute({List<PageRouteInfo>? children})
      : super(
          QuranRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuranRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ZikirPage]
class ZikirRoute extends PageRouteInfo<void> {
  const ZikirRoute({List<PageRouteInfo>? children})
      : super(
          ZikirRoute.name,
          initialChildren: children,
        );

  static const String name = 'ZikirRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
