import 'package:rsm/service/on_boarding_service.dart';
import 'package:rsm/ui/main/main_view.dart';
import 'package:rsm/ui/onboarding/onboarding_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// flutter pub run build_runner build

@StackedApp(
  routes: [
    MaterialRoute(page: MainView, initial: true),
    MaterialRoute(page: OnBoardingView)
    // CupertinoRoute(page: ExampleView),
    // MaterialRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: OnBoardingService),
  ],
  logger: StackedLogger(),
)
class AppSetup {}
