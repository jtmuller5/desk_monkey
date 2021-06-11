import 'package:desk_monkey/services/services.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends ReactiveViewModel with WidgetsBindingObserver {
  String recognizedWords = '';

  bool get listening {
    return speechService.speech.isListening;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {

    switch (state) {
      case AppLifecycleState.resumed:
        print("app in resumed");
        speechService.listenForWakeWord();
        break;
      case AppLifecycleState.inactive:
        print("app in inactive");
        break;
      case AppLifecycleState.paused:
        print("app in paused");
        speechService.stopListeningForWakeWord();
        break;
      case AppLifecycleState.detached:
        print("app in detached");
        break;
    }

    notifyListeners();
  }

  void initialize() {
    WidgetsBinding.instance?.addObserver(this);
  }

  void startListening() {
    speechService.startListening(resultCallback: (result) {
      print('Recognized words: ' + result.recognizedWords);

      if (result.recognizedWords.isNotEmpty) {
        recognizedWords = result.recognizedWords;
        notifyListeners();
      }
    });

    notifyListeners();
  }

  @override
  void dispose() {
    speechService.stopListeningForWakeWord();
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [speechService];
}
