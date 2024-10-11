import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class SubjetiveCard extends StatefulWidget {
  const SubjetiveCard({super.key, required Null Function(double nota) onSave});

  @override
  State<SubjetiveCard> createState() => _SubjetiveCardState();
}

class _SubjetiveCardState extends State<SubjetiveCard> {
  bool showStar1 = false;
  bool showStar2 = false;
  bool showStar3 = false;

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
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          showStar1 = true;
                          showStar2 = false;
                          showStar3 = false;
                        });
                      },
                      icon: (showStar1)
                          ? SvgPicture.asset('assets/images/staron.svg')
                          : SvgPicture.asset('assets/images/staroff.svg'),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          showStar2 = true;
                          showStar1 = true;
                          if (showStar3) {
                            showStar3 = false;
                          }
                        });
                      },
                      icon: (showStar2)
                          ? SvgPicture.asset('assets/images/staron.svg')
                          : SvgPicture.asset('assets/images/staroff.svg'),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          showStar3 = true;
                          showStar1 = true;
                          showStar2 = true;
                        });
                      },
                      icon: (showStar3)
                          ? SvgPicture.asset('assets/images/staron.svg')
                          : SvgPicture.asset('assets/images/staroff.svg'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    border: GradientBoxBorder(
                      gradient: gradientLk(),
                    ),
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.transparent),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                    onPressed: () {},
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
