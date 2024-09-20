import 'package:colorcard/pages/color_details.dart';
import 'package:colorcard/pages/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 3,
        children: colorsCard.map(
          (e) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ColorDetails(
                              path: e.voice,
                              namecolor: e.alpha,
                              color: e.c,
                            )));
              },
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: e.c,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
