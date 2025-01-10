import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            SizedBox(
              height: 20,
            ),
            PodiumCard3(),
            SizedBox(
              height: 20,
            ),
            PodiumCard1()
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

class PodiumCard3 extends StatefulWidget {
  const PodiumCard3({super.key});

  @override
  State<PodiumCard3> createState() => _PodiumCardState3();
}

class _PodiumCardState3 extends State<PodiumCard3> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Icon(
            Icons.workspace_premium,
            color: Colors.brown,
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

class PodiumCard1 extends StatefulWidget {
  const PodiumCard1({super.key});

  @override
  State<PodiumCard1> createState() => _PodiumCardState1();
}

class _PodiumCardState1 extends State<PodiumCard1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/images/coroa.svg',
            height: 40,
            width: 40,
            // ignore: deprecated_member_use
            color: Colors.yellowAccent,
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
