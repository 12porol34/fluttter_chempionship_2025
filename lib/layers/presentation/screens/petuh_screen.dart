import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/shared/ui/card_screen.dart';
import 'package:matule/layers/presentation/shared/ui/home_button.dart';
import 'package:matule/layers/presentation/shared/ui/card_screen.dart';

class PetuhScreen extends StatefulWidget {
  const PetuhScreen({super.key});

  @override
  State<PetuhScreen> createState() => _PetuhScreenState();
}

class _PetuhScreenState extends State<PetuhScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: IconButton(
                    onPressed: () => context.go('/'),
                    icon: Icon(CupertinoIcons.line_horizontal_3_decrease),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: IconButton(
                    onPressed: () => context.go('/'),
                    icon: Icon(CupertinoIcons.bag),
                  ),
                ),
              ],
            ),
            Text(
              ('Главная'),
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(204, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Container(
                //   child: IconButton(
                //     onPressed: () => context.go('/'),
                //     icon: Icon(CupertinoIcons.airplane),
                //   ),
                // ),
                Container(
                  width: 300,
                  height: 52,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Поиск',
                    ),
                  ),
                ),
                Container(),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [HomeButton(), HomeButton(), HomeButton()],
              ),
            ),
            SizedBox(height: 20),
            Text('Популярное'),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [CardScreen(), CardScreen()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
