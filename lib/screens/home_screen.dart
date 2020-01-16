import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: NestedScrollView(
              headerSliverBuilder: (context, _) {
                return <Widget>[
                  SliverPersistentHeader(
                    delegate: CustomSliverBar(title: "Oi", expandedHeight: 90),
                    pinned: true,
                  )
                ];
              },
              body: ListView(
                  children: List.generate(1000, (a) {
                return Text("Text de teste $a");
              })))),
    );
  }
}

class CustomSliverBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final String title;
  final List<Widget> actions;

  CustomSliverBar({this.title, this.expandedHeight, this.actions});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.red,
        ),
        Container(
          height: expandedHeight * 1 / 5,
          color: Colors.blue,
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
