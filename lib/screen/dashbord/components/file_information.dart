import 'package:admin_pannel/screen/dashbord/components/prograss_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import 'list_object.dart';

class FileInformation extends StatelessWidget {
  final ListObject lists;
  //final int index;
  const FileInformation({
    Key? key,
    required this.lists,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [

          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset(lists.imagePath),
          ),
          Text(
            lists.fileName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          ProgressLine(lists: lists),
        ],
      ),
    );
  }
}

