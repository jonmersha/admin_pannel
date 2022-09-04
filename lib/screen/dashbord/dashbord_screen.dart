import 'dart:html';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'components/chart.dart';
import '../../constants.dart';
import 'components/header.dart';
import 'components/list_object.dart';
import 'components/my_file.dart';
import 'components/storage_Info_card.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ListObject> lists = [
      ListObject(fileName: "Documents", imagePath: "assets/icons/Figma_file.svg", fileSize: "20 GB", mediaType: "Text",color: Colors.blue,percentage: 50 ),
      ListObject(fileName: "Google Drive", imagePath: "assets/icons/google_drive.svg", fileSize: "20 GB", mediaType: "Text",color: Colors.yellow,percentage: 80),
      ListObject(fileName: "One Drive", imagePath: "assets/icons/media_file.svg", fileSize: "20 GB", mediaType: "Text",color: Colors.amber,percentage: 60),
      ListObject(fileName: "Documents", imagePath: "assets/icons/menu_doc.svg", fileSize: "20 GB", mediaType: "Text",color: Colors.red,percentage: 30)

    ];

    List<PieChartSectionData> paichartSelectioData = [
      PieChartSectionData(
          color: Colors.yellow, radius: 30, showTitle: false, value: 15),
      PieChartSectionData(
          color: Colors.red, radius: 25, showTitle: false, value: 50),
      PieChartSectionData(
          color: Colors.green, radius: 20, showTitle: false, value: 15),
      PieChartSectionData(
          color: Colors.black, radius: 20, showTitle: false, value: 15),
    ];
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Expanded(
                    flex: 5,
                    child: MayFile(lists: lists)),
                const SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 500,
                      decoration: const BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          const Text(
                            "Overall Rectification Rate",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: defaultPadding),
                          Chart(pieChartSelectionData: paichartSelectioData),
                          const StorageInfoCard(
                            title: "Document File",
                            image: "assets/icons/Documents.svg",
                            fileAmount: "1.3",
                            fileNumber: 123,
                          ),
                          const StorageInfoCard(
                            title: "Media File",
                            image: "assets/icons/Documents.svg",
                            fileAmount: "1.3",
                            fileNumber: 123,
                          ),
                        ],
                      ),
                    ))
              ],
            )

          ],
        ),
      ),
    );
  }
}

