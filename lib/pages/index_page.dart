import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';

import '../config/index.dart';
import '../config/string.dart';
import '../provide/current_index_provide.dart';
import 'category_page.dart';
import 'home_page.dart';
import 'membership_page.dart';
import 'shopping_cart_page.dart';

class IndexPage extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text(KString.homeTitle),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category),
      title: Text(KString.categoryTitle),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      title: Text(KString.shoppingCartTitle),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text(KString.memberShipTitle),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // 屏幕适配处理
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return Provide<CurrentIndexProvide>(
      builder: (context, child, val) {
        final currentIndexProvide = Provide.value<CurrentIndexProvide>(context);
        final currentIndex = currentIndexProvide.currentIndex;

        return Scaffold(
            backgroundColor: KColor.scaffoldBackgroundColor,
            appBar: AppBar(title: Text('hello')),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: bottomTabs,
              currentIndex: currentIndex,
              onTap: (index) {
                currentIndexProvide.changeIndex(index);
              },
            ),
            body: IndexedStack(
              index: currentIndex,
              children: <Widget>[
                HomePage(),
                CategoryPage(),
                ShoppingCartPage(),
                MembershipPage()
              ],
            ));
      },
    );
  }
}
