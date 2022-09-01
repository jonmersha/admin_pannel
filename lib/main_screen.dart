import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [

            Expanded(
              child: SideMenu(),

            ),
            Expanded(
              //it takes 5/6 part of the screen
                flex: 5,
                child: Container(
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }
}

