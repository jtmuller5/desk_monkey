import 'package:desk_monkey/app/app_router.gr.dart';
import 'package:desk_monkey/services/speech/speech_service.dart';

import 'get_it.dart';

final appRouter = AppRouter();

SpeechService get speechService {
  return getIt.get<SpeechService>();
}