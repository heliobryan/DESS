import 'package:dess/App/Source/Core/Components/AvaliationComponents/quantitativecard.dart';
import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            PodiumCard2(),
          ],
        ),
      ),
    );
  }
}

class PodiumCard2 extends StatefulWidget {
  const PodiumCard2({super.key});

  @override
  State<PodiumCard2> createState() => _PodiumCardState();
}

class _PodiumCardState extends State<PodiumCard2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Icon(
            Icons.workspace_premium,
            color: Colors.grey,
            size: 30,
          ),
          Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
            size: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Nome',
            style: comp16Out(),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: GradientBoxBorder(
                width: 3,
                gradient: gradientLk(),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              '10',
              style: comp13Out(),
            ),
          ),
        ],
      ),
    );
  }
}
