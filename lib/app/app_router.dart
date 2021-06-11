import 'package:auto_route/auto_route_annotations.dart';
import 'package:desk_monkey/ui/home/home_view.dart';
import 'package:desk_monkey/ui/singleCommand/single_command_view.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: HomeView, initial: true),
  AutoRoute(page: SingleCommandView)

])
class $AppRouter {}
