import 'package:flutter/material.dart';

enum FoodKind {
  // 한식
  food1,
  food2,
  food3,
}

class TestRadio extends StatefulWidget {
  const TestRadio({super.key});

  @override
  State<TestRadio> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TestRadio> {
  FoodKind? foodKind = FoodKind.food1; // 한식

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Radio 테스트'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$foodKind'),
            // ListTile(
            //   title: Text('한식'),
            //   leading: Radio(
            //     value: FoodKind.food1,
            //     groupValue: foodKind,
            //     onChanged: (value) {
            //       setState(() {
            //         foodKind = value;
            //       });
            //     },
            //   ),
            // ),
            // ListTile(
            //   title: Text('중식'),
            //   leading: Radio(
            //     value: FoodKind.food2,
            //     groupValue: foodKind,
            //     onChanged: (value) {
            //       setState(() {
            //         foodKind = value;
            //       });
            //     },
            //   ),
            // ),
            // ListTile(
            //   title: Text('일식'),
            //   leading: Radio(
            //     value: FoodKind.food3,
            //     groupValue: foodKind,
            //     onChanged: (value) {
            //       setState(() {
            //         foodKind = value;
            //       });
            //     },
            //   ),
            // ),
            RadioListTile(
              title: Text('한식'),
              value: FoodKind.food1,
              groupValue: foodKind,
              onChanged: (value) {
                setState(() {
                  foodKind = value;
                });
              },
            ),
            RadioListTile(
              title: Text('중식'),
              value: FoodKind.food2,
              groupValue: foodKind,
              onChanged: (value) {
                setState(() {
                  foodKind = value;
                });
              },
            ),
            RadioListTile(
              title: Text('일식'),
              value: FoodKind.food3,
              groupValue: foodKind,
              onChanged: (value) {
                setState(() {
                  foodKind = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
