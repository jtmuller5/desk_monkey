import 'package:desk_monkey/services/services.dart';
import 'package:stacked/stacked.dart';

class SingleCommandViewModel extends BaseViewModel{

  String recognizedWords = '';

  void initialize(){

  }

  void startListening(){
    speechService.startListening(resultCallback: (result) {
      print('Recognized words: '+ result.recognizedWords);

      if(result.recognizedWords != null){
        recognizedWords = result.recognizedWords;
        notifyListeners();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

}