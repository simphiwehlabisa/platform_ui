
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_ui/platform/platform.dart';


class PlatformAppBar extends PlatformWidget<CupertinoNavigationBar, AppBar> {
    
    final Widget leading;
    final Widget title;

    PlatformAppBar({
      this.leading,
      this.title
    });
    
    // PlatformWidget({
    //     this.leading,
    //     this.title,
    // });
    
    @override 
    CupertinoNavigationBar createIosWidget(BuildContext context) => 
    new CupertinoNavigationBar (
            leading: leading,
            middle: title,
    );
    
    @override
    AppBar createAndroidWidget(BuildContext context) =>
        new AppBar(
            leading: leading,
            title: title,
        );     
}