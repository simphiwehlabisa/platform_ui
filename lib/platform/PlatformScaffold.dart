import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_ui/platform/platform.dart';

class PlatformScaffold extends PlatformWidget<CupertinoPageScaffold, Scaffold> {
  final Text title;
  final Widget body;

  PlatformScaffold({this.title, this.body});

  @override
  Scaffold createAndroidWidget(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: title,
      ),
      body: body,
    );
  }

  @override
  CupertinoPageScaffold createIosWidget(BuildContext context) {
    return new CupertinoPageScaffold(
      navigationBar: new CupertinoNavigationBar(
        middle: title,
      ),
      child: body,
    );
  }
}