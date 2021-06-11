import 'package:desk_monkey/services/get_it.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

// flutter packages pub run build_runner watch
// flutter packages pub run build_runner build

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)

void configureDependencies() => $initGetIt(getIt);


