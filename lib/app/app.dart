import 'package:rsm/ui/main/main_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
// flutter pub run build_runner build

@StackedApp(routes: [
  MaterialRoute(page: MainView, initial: true),
  // CupertinoRoute(page: ExampleView),
  // MaterialRoute(page: HomeView),
], dependencies: [
  LazySingleton(classType: NavigationService),
])
class AppSetup {}
