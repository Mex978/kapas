import 'package:flutter/material.dart';
import 'package:kapas/widgets/custom_drop_down.dart';

class CustomSliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final String title;
  final List<Widget> actions;

  CustomSliverAppBar({this.title, this.expandedHeight, this.actions});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
        ),
        Container(
          color: Theme.of(context).primaryColor,
          height: 30,
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CustomDropDown(content: "USD"),
                  CustomDropDown(content: "English"),
                  CustomDropDown(content: "My account"),
                ],
              ),
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.local_phone,
                        color: Colors.white,
                      ),
                      Text(
                        "(86) 99999-9999",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
