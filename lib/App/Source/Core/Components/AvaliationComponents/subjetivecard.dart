import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class SubjetiveCard extends StatefulWidget {
  final Function(double nota) onSave;

  const SubjetiveCard({super.key, required this.onSave});

  @override
  State<SubjetiveCard> createState() => _SubjetiveCardState();
}

class _SubjetiveCardState extends State<SubjetiveCard> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 361,
      height: 180,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF981DB9),
                Color(0xFF0F76CE),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              const Text(
                'Avaliação - O atleta está concentrado?',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 60,
                width: 156,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return IconButton(
                      onPressed: () {
                        setState(() {
                          rating = index + 1;
                        });
                      },
                      icon: SvgPicture.asset(
                        rating > index
                            ? 'assets/images/staron.svg'
                            : 'assets/images/staroff.svg',
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    border: GradientBoxBorder(
                      gradient: gradientLk(),
                    ),
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.transparent),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                    onPressed: () {
                      widget.onSave(rating.toDouble());
                    },
                    child: Center(
                      child: Text(
                        'SALVAR',
                        style: comp15Str(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
