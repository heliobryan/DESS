import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avatec_page.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:intl/intl.dart';

class AvapsiPage extends StatefulWidget {
  const AvapsiPage({super.key});

  @override
  State<AvapsiPage> createState() => _AvapsiPageState();
}

class _AvapsiPageState extends State<AvapsiPage> {
  bool focState = true;
  bool conState = false;
  bool resState = false;
  bool respState = false;
  bool humState = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () => Navigator.pop(context, 'avaliationPage'),
        ),
        title: Text(
          'Mental',
          style: comp20Str(),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => const ExitButton(),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          const GradientBack(),
          const BackgroudImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                width: 112,
                height: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: GradientBoxBorder(
                    width: 3,
                    gradient: gradientLk(),
                  ),
                ),
                child: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 105,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Text(
                    'Name',
                    style: comp20Str(),
                  ),
                  Text(
                    'Atacante - Sub 13 - Society',
                    style: comp15Out(),
                  ),
                  Text(
                    'Escola Flamengo - Caratinga MG',
                    style: comp15Out(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(width: 20),
                    Container(
                      width: 105,
                      height: 23,
                      decoration: BoxDecoration(
                        border: GradientBoxBorder(
                          gradient: gradientLk(),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.transparent,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                                side: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              child: Text(
                                'Foco',
                                style: comp15Out(),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 105,
                      height: 23,
                      decoration: BoxDecoration(
                        border: GradientBoxBorder(
                          gradient: gradientLk(),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.transparent,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                                side: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              child: Text(
                                'Confiança',
                                style: comp12Out(),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 105,
                      height: 23,
                      decoration: BoxDecoration(
                        border: GradientBoxBorder(
                          gradient: gradientLk(),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.transparent,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                                side: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              child: Text(
                                'Resiliência',
                                style: comp9Out(),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 105,
                      height: 23,
                      decoration: BoxDecoration(
                        border: GradientBoxBorder(
                          gradient: gradientLk(),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.transparent,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                                side: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              child: Text(
                                'Respeito',
                                style: comp13Out(),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 105,
                      height: 23,
                      decoration: BoxDecoration(
                        border: GradientBoxBorder(
                          gradient: gradientLk(),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.transparent,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                                side: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              child: Text(
                                'Humildade',
                                style: comp12Out(),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 149,
                height: 23,
                decoration: BoxDecoration(
                  border: GradientBoxBorder(
                    gradient: gradientLk(),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.transparent,
                    side: const BorderSide(color: Colors.transparent),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CalendarPage(),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      DateFormat.yMd().format(
                        DateTime.now(),
                      ),
                      style: comp15Out(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Column(
                children: [],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
