import 'dart:ui';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:dess/App/Source/Services/exit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

InputDecoration nameAuthDecoration(String label) {
  return InputDecoration(
    hintText: label,
    fillColor: const Color(0xFF282E36),
    filled: true,
    contentPadding: const EdgeInsets.all(12),
    prefixIcon: const Icon(
      Icons.person_outline,
      color: Color(0xFF484D54),
    ),
    hintStyle: const TextStyle(
      color: Color(0xFF666F7B),
      fontFamily: 'OUTFIT',
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFF464C54),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFAD0000),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFAD0000),
      ),
    ),
  );
}

InputDecoration emailAuthDecoration(String label) {
  return InputDecoration(
    hintText: label,
    fillColor: const Color(0xFF282E36),
    filled: true,
    contentPadding: const EdgeInsets.all(12),
    prefixIcon: const Icon(
      Icons.email_outlined,
      color: Color(0xFF484D54),
    ),
    hintStyle: const TextStyle(
      color: Color(0xFF666F7B),
      fontFamily: 'OUTFIT',
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFF464C54),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFAD0000),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFAD0000),
      ),
    ),
  );
}

class GradientBack extends StatelessWidget {
  const GradientBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 292,
                height: 146,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF981DB9),
                      Color(0xFF0F76CE),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 292,
                    height: 146,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF981DB9),
                          Color(0xFF0F76CE),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                      child: Container(
                        color: Colors.black.withOpacity(0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 292,
                    height: 146,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF981DB9),
                          Color(0xFF0F76CE),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 150, sigmaY: 200),
                      child: Container(
                        color: Colors.black.withOpacity(0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BackgroudImage extends StatelessWidget {
  const BackgroudImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 10,
          child: SvgPicture.asset(
            'assets/images/background.svg',
            height: 266,
            width: 450,
          ),
        ),
      ],
    );
  }
}

class CardPlayer extends StatelessWidget {
  const CardPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 341,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF981DB9),
              Color(0xFF0F76CE),
            ],
          ),
        ),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFF981DB9),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          side: const BorderSide(color: Colors.transparent),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              const Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 40,
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    'Gabriel Henrique Almeida',
                    style: comp15Out(),
                  ),
                  Text(
                    'Atacante - Sub 13 - Society',
                    style: comp15Out(),
                  ),
                ],
              ),
            ],
          ),
        ),
        onPressed: () => Navigator.pushNamed(context, 'avaliationPage'),
      ),
    );
  }
}

class CompCard extends StatelessWidget {
  const CompCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 365,
      height: 62,
      child: Row(
        children: [
          const Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
            size: 40,
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Text(
                'Jogos escolares de',
                style: comp13Out(),
              ),
              Text(
                'Minas Gerais - Jemg',
                style: comp13Out(),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Container(
            width: 85,
            height: 30,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              border: GradientBoxBorder(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                ),
              ),
            ),
            child: TextButton(
              child: Text(
                'Programação',
                style: comp10Out(),
              ),
              onPressed: () => Navigator.pushNamed(context, 'infoPage'),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 85,
            height: 30,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              border: GradientBoxBorder(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                ),
              ),
            ),
            child: TextButton(
              child: Text(
                'Listas',
                style: comp11Out(),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ExitButton extends StatefulWidget {
  const ExitButton({super.key});

  @override
  State<ExitButton> createState() => _ExitButtonState();
}

class _ExitButtonState extends State<ExitButton> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Tem certeza que deseja sair?',
        style: comp20(),
      ),
      actions: <Widget>[
        Row(
          children: [
            SizedBox(
              width: 127,
              height: 31,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: const Color(0xFF0F76CE),
                ),
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Não',
                  style: comp16Out(),
                ),
              ),
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: 127,
              height: 31,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: const Color(0xFF981DB9),
                ),
                onPressed: () async {
                  bool exit = await exitVerify();
                  if (exit) {
                    Navigator.pushReplacement(
                      // ignore: use_build_context_synchronously
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InitialPage(),
                      ),
                    );
                  }
                },
                child: Text(
                  'Sim',
                  style: comp16Out(),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class PsiCard extends StatefulWidget {
  const PsiCard({super.key});

  @override
  State<PsiCard> createState() => _PsiCardState();
}

class _PsiCardState extends State<PsiCard> {
  bool showStar1 = true;
  bool showStar2 = true;
  bool showStar3 = true;
  bool showStar4 = true;
  bool showStar5 = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 361,
      height: 100,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/images/staron.svg'),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        showStar1 = !showStar1;
                      });
                    },
                    icon: (showStar1)
                        ? SvgPicture.asset('assets/images/staroff.svg')
                        : SvgPicture.asset('assets/images/staron.svg'),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        showStar2 = !showStar2;
                        showStar1 = !showStar1;
                      });
                    },
                    icon: (showStar2)
                        ? SvgPicture.asset('assets/images/staroff.svg')
                        : SvgPicture.asset('assets/images/staron.svg'),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        showStar3 = !showStar3;
                        showStar2 = !showStar2;
                        showStar1 = !showStar1;
                      });
                    },
                    icon: (showStar3)
                        ? SvgPicture.asset('assets/images/staroff.svg')
                        : SvgPicture.asset('assets/images/staron.svg'),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        showStar4 = !showStar4;
                        showStar3 = !showStar3;
                        showStar2 = !showStar2;
                        showStar1 = !showStar1;
                      });
                    },
                    icon: (showStar4)
                        ? SvgPicture.asset('assets/images/staroff.svg')
                        : SvgPicture.asset('assets/images/staron.svg'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TextStyle comp20Str() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontFamily: 'STRETCH',
  );
}

TextStyle comp25Str() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontFamily: 'STRETCH',
  );
}

TextStyle comp15Str() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontFamily: 'STRETCH',
  );
}

TextStyle comp9Out() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 9,
    fontFamily: 'OUTFIT',
    fontWeight: FontWeight.bold,
  );
}

TextStyle comp16Out() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontFamily: 'OUTFIT',
    fontWeight: FontWeight.bold,
  );
}

TextStyle comp15Out() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontFamily: 'OUTFIT',
    fontWeight: FontWeight.bold,
  );
}

TextStyle comp25Out() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontFamily: 'OUTFIT',
    fontWeight: FontWeight.bold,
  );
}

TextStyle comp13Out() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 13,
    fontFamily: 'OUTFIT',
    fontWeight: FontWeight.bold,
  );
}

TextStyle comp10Out() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 10,
    fontFamily: 'OUTFIT',
    fontWeight: FontWeight.bold,
  );
}

TextStyle comp11Out() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 11,
    fontFamily: 'OUTFIT',
    fontWeight: FontWeight.bold,
  );
}

TextStyle comp12Out() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontFamily: 'OUTFIT',
    fontWeight: FontWeight.bold,
  );
}

TextStyle comp20Out() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontFamily: 'OUTFIT',
    fontWeight: FontWeight.bold,
  );
}

TextStyle comp20() {
  return const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: 'STRETCH',
    fontWeight: FontWeight.bold,
  );
}

TextStyle comp40Out() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontFamily: 'OUTFIT',
    fontWeight: FontWeight.bold,
  );
}

LinearGradient gradientLk() {
  return const LinearGradient(
    colors: <Color>[
      Color(0xFF981DB9),
      Color(0xFF0F76CE),
    ],
  );
}

LinearGradient gradientCenter() {
  return const LinearGradient(
    colors: <Color>[
      Color(0xFF981DB9),
      Color(0xFF0F76CE),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

LinearGradient gradientDD() {
  return const LinearGradient(
    colors: <Color>[
      Color(0xFF981DB9),
      Color(0xFF0F76CE),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
