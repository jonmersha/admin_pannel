import 'package:flutter/material.dart';
import 'list_object.dart';


class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    required this.lists,
  }) : super(key: key);
  final ListObject lists;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 5,
              decoration: BoxDecoration(
                  color: lists.color.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            LayoutBuilder(
              builder: (context, constraints) => Container(
                width: constraints.maxWidth*(lists.percentage/100),
                height: 5,
                decoration: BoxDecoration(
                    color: lists.color,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            )
          ],
        ),

        Container(
          height: 50,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("File Desc",
              style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: Colors.white70),),
              Text("19GB",
              style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: Colors.white70),)
            ],
          ),
        )
      ],
    );
  }
}
