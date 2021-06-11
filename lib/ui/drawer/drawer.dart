import 'package:auto_route/auto_route.dart';
import 'package:desk_monkey/app/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                DrawerHeader(child: Center(
                  child: Text('Desk Monkey'),
                )),
                ListTile(
                  leading: Icon(Icons.mic),
                  title: Text('Single Command'),
                  onTap: () async {
                    //ExtendedNavigator.named('topNav').pop();
                    ExtendedNavigator.root.push(
                      Routes.singleCommandView,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
