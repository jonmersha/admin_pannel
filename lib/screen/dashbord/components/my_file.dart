import 'package:admin_pannel/resposnsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'file_information.dart';
import 'list_object.dart';

class MayFile extends StatelessWidget {
  final List<ListObject> lists;

  const MayFile({
    Key? key,
    required this.lists,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size=MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My File",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 1.5,
                      vertical: defaultPadding)),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add New"),
            ),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        //FileInfoCardGridView(lists: lists)
        Responsive(
            mobile: FileInfoCardGridView(
              lists: lists,
              crossAxisCount: _size.width<650?2:4,
              childAspectRatio: _size.width<650?1.2:1.3,
            ),
            tablet: FileInfoCardGridView(
              lists: lists,
              crossAxisCount: 4,
            ),
            desktop: FileInfoCardGridView(
              lists: lists,
              crossAxisCount: 4,
              childAspectRatio: _size.width < 1400 ?1.1:1.4,
            ))
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView(
      {Key? key,
      required this.lists,
      this.crossAxisCount = 4,
      this.childAspectRatio = 1})
      : super(key: key);
  final List<ListObject> lists;

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: lists.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding
      ),
      itemBuilder: (context, index) => FileInformation(lists: lists[index]),
    );
  }
}
