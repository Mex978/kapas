import 'package:flutter/material.dart';
import 'package:kapas/widgets/custom_sliver_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: NestedScrollView(
              headerSliverBuilder: (context, _) {
                return <Widget>[
                  SliverPersistentHeader(
                    delegate:
                        CustomSliverAppBar(title: "Oi", expandedHeight: 140),
                    pinned: true,
                  )
                ];
              },
              body: Container(
                  color: Colors.red,
                  child: ListView(
                      children: List.generate(1000, (a) {
                    return Text("Text de teste $a");
                  }))))),
    );
  }
}
