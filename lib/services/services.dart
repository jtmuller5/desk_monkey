import 'package:desk_monkey/services/speech/speech_service.dart';

import 'get_it.dart';

SpeechService get speechService {
  return getIt.get<SpeechService>();
}