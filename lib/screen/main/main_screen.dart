import 'package:admin_pannel/screen/dashbord/dashbord_screen.dart';
import 'package:flutter/material.dart';

import 'components/side_menu.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Expanded(
              child: SideMenu(),

            ),
            Expanded(
              //it takes 5/6 part of the screen
                flex: 5,
                child: Container(
                  //color: Colors.blue,
                  child: DashBoardScreen(),
                ))
          ],
        ),
      ),
    );
  }
}

