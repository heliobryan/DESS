import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class Measurablecard extends StatelessWidget {
  const Measurablecard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth * 0.9;
        double cardHeight = 100;

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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Titulo do item',
                        style: comp15Out(),
                      ),
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        child: Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('1.54', style: comp15Str()),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Metros',
                              style: comp15Str(),
                            )
                          ],
                        )),
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

class EditMeasurableCard extends StatefulWidget {
  const EditMeasurableCard({super.key});

  @override
  State<EditMeasurableCard> createState() => _EditMeasurableCardState();
}

class _EditMeasurableCardState extends State<EditMeasurableCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 117,
            width: 317,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: GradientBoxBorder(
                gradient: gradientDD(),
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 130,
                    child: TextField(
                      style: comp20Out(),
                      decoration: InputDecoration(
                        prefix: const Text('   '),
                        contentPadding: const EdgeInsets.all(1),
                        border: GradientOutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(9)),
                          gradient: gradientLk(),
                          width: 1,
                        ),
                        focusedBorder: GradientOutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          gradient: gradientLk(),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 117,
            width: 317,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: GradientBoxBorder(
                gradient: gradientDD(),
              ),
            ),
            child: const Center(),
          ),
        ],
      )),
    );
  }
}
