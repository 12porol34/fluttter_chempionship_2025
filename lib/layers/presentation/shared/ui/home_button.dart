import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
      height: 40,
      width: 108,
      decoration: BoxDecoration(
        color: (const Color.fromARGB(255, 242, 242, 244)),
      ),
      child: Text(
        'ВСЕ',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: CupertinoColors.black,
        ),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.only(right: 20),
      alignment: Alignment.center,
    );
  }
}
