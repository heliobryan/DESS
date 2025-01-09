import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class SubjetiveCard extends StatefulWidget {
  final Function(double nota) onSave;
  final String name;

  const SubjetiveCard({
    super.key,
    required this.onSave,
    required this.name,
    required title,
  });

  @override
  State<SubjetiveCard> createState() => _SubjetiveCardState();
}

class _SubjetiveCardState extends State<SubjetiveCard> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    final maxLength = 30;
    String topText = widget.name;
    String bottomText = '';

    if (widget.name.length > maxLength) {
      int breakPoint = widget.name.lastIndexOf(' ', maxLength);
      if (breakPoint == -1) breakPoint = maxLength;
      topText = widget.name.substring(0, breakPoint);
      bottomText = widget.name.substring(breakPoint).trim();
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 250,
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
              Text(
                topText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              if (bottomText.isNotEmpty) ...[
                const SizedBox(height: 5),
                Text(
                  bottomText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'OUTFIT',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
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
