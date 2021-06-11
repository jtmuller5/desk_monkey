import 'package:desk_monkey/services/services.dart';
import 'package:desk_monkey/ui/drawer/drawer.dart';
import 'package:desk_monkey/ui/home/home_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) {
        model.initialize();
      },
      builder: (context, model, child) {
        return Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            endDrawer: NavDrawer(),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 2,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: AnimatedContainer(
                            duration: kThemeAnimationDuration,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: RadialGradient(
                                  center: Alignment.center,
                                    radius: model.listening? .7: .3,
                                    stops: [.3,.6],
                                    colors: [
                                      Colors.green,
                                      Theme.of(context).primaryColor,
                                    ]
                                )
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Center(
                            child: RawMaterialButton(
                              elevation: 4,
                              fillColor: Colors.white,
                              shape: CircleBorder(),
                              child: Container(
                                  height: 175,
                                  width: 175,
                                  child: Icon(
                                    Icons.mic,
                                    size: 100,
                                  )),
                              onPressed: () {
                                model.startListening();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Center(
                      child: Text(
                        speechService.speech.lastRecognizedWords,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
