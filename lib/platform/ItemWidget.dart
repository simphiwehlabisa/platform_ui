import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_ui/platform/platform.dart';

class ItemWidget extends PlatformWidget<Widget, Widget> {
  final Widget child;

  ItemWidget({this.child});

  @override
  Widget createAndroidWidget(BuildContext context) => new Card(
        child: child,
      );
  @override
  Widget createIosWidget(BuildContext context) => child;
}