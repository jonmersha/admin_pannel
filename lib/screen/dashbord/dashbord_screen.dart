import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


import '../../constants.dart';
import 'components/chart.dart';
import 'components/header.dart';
class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<PieChartSectionData> paichartSelectioData=[
      PieChartSectionData(
        color:Colors.yellow,
        radius: 30,
        showTitle: false,
        value: 15),

      PieChartSectionData(
        color:Colors.red,
        radius: 25,
        showTitle: false,
        value: 50),
      PieChartSectionData(
        color:Colors.green,
        radius: 20,
        showTitle: false,
        value: 15),
      PieChartSectionData(
        color:Colors.black,
        radius: 20,
        showTitle: false,
        value: 15),


    ];
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding,),
            Row(
              children: [
                Expanded(
                  flex: 5,
                    child: Container(
                      height: 500,

                  color: Colors.white,
                )),
                SizedBox(width: defaultPadding,),
                Expanded(
                  flex: 2,
                    child: Container(
                  height: 500,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))

                      ),
                      child: Column(
                        children: [
                          const Text(
                            "Finding Rectification",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight:FontWeight.w500
                            ),
                          ),
                          Chart(paichartSelectionData: paichartSelectioData)

                        ],
                      ),

                ))
              ],
            )
            // Container(
            //   height: 400,
            //   width: double.infinity,
            //   color: Colors.green,
            // ),
          ],
        ),

      ),
    );


  }


}

