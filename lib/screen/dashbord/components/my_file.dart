import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'list_object.dart';


class MayFile extends StatelessWidget {
 final  List<ListObject> lists;
  const MayFile({
    Key? key, required this.lists,
      //required this.lists

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        GridView.builder(
          shrinkWrap: true,
          itemCount:lists.length ,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: defaultPadding),
          itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.all(defaultPadding),
            decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
         child: Column(
           children: [
             Row(
               children: [
                 Container(
                   height: 40,
                   width: 40,
                   decoration:  BoxDecoration(
                       color: Colors.blue,
                   borderRadius: BorderRadius.all(
                       Radius.circular(10)

                   ),
                     image: Image.asset(image: lists[0].imagePath)
                   ),
                 )
               ],
             ),
           ],
         ),
          ),
        )
      ],
    );
  }
}
