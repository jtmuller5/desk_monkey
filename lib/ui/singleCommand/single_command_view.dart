import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'single_command_view_model.dart';

class SingleCommandView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleCommandViewModel>.reactive(
      viewModelBuilder: () => SingleCommandViewModel(),
      onModelReady: (model) {
        // model.initialize();
      },
      builder: (context, model, child) {
        return Scaffold(
         appBar: AppBar(
            title: Text('Single Command'),
          ),
            body: Center(
              child: Column(
                children: [
                  ElevatedButton(onPressed: (){
                    model.startListening();
                  }, child: Text('Start listening'),),
                  Text(model.recognizedWords)
                ],
              ),
            )
        );
      },
    );
  }
}