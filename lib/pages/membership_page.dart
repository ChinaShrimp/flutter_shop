import 'package:flutter/material.dart';

class MembershipPage extends StatefulWidget {
  MembershipPage({Key key}) : super(key: key);

  @override
  _MembershipPageState createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('会员中心')),
    );
  }
}
