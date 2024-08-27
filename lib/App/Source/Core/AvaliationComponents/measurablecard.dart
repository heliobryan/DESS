import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Measurablecard extends StatelessWidget {
  const Measurablecard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth * 0.9;
        double cardHeight = 120;

        return SizedBox(
          width: cardWidth,
          height: cardHeight,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border: GradientBoxBorder(
                gradient: gradientCenter(),
              ),
            ),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                side: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(
                      8.0), // Adiciona padding para espaçamento
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize
                        .min, // Minimiza o tamanho da coluna para caber no card
                    children: [
                      const SizedBox(height: 5),
                      Text(
                        'Titulo do item',
                        style: comp15Out(),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  const Icon(
                                    Icons.sports_soccer,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    '28',
                                    style: comp15Out(),
                                  ),
                                  Text(
                                    'Passes feitos',
                                    style: comp10Out(),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 15),
                              Image.asset('assets/images/vertline.png'),
                              const SizedBox(width: 15),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.check,
                                    color: Color(0xFF00FF38),
                                    size: 20,
                                  ),
                                  Text(
                                    '17',
                                    style: comp15Out(),
                                  ),
                                  Text(
                                    'Passes certos',
                                    style: comp10Out(),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 15),
                              Image.asset('assets/images/vertline.png'),
                              const SizedBox(width: 15),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.dangerous_outlined,
                                    color: Color(0xFFE70000),
                                    size: 20,
                                  ),
                                  Text(
                                    '11',
                                    style: comp15Out(),
                                  ),
                                  Text(
                                    'Passes errados',
                                    style: comp9Out(),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 15),
                              Image.asset('assets/images/vertline.png'),
                              const SizedBox(width: 15),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    '7,6',
                                    style: comp15Out(),
                                  ),
                                  Text(
                                    'Nota final',
                                    style: comp10Out(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
