
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class StorageInfoCard extends StatelessWidget {

  final String title, image,fileAmount;
  final int fileNumber;
  const StorageInfoCard({
    Key? key,
  required this.title,
  required this.image,
  required this.fileAmount,
  required this.fileNumber,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding/2),
      padding: const EdgeInsets.all(defaultPadding/2),
      decoration: BoxDecoration(
          border: Border.all(
              width: 2,
              color: primaryColor.withOpacity(0.15)),
          borderRadius: const BorderRadius.all(
              Radius.circular(defaultPadding/10))),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
                image
            ),
          ),
          Expanded(
            child: Column(
              children:  [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "$fileAmount Files",
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white70),

                ),
              ],
            ),
          ),
          Text("$fileAmount GB")
        ],
      ),
    );
  }
}