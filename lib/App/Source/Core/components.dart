import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

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

InputDecoration passAuthDecoration(String label) {
  return InputDecoration(
    hintText: label,
    fillColor: const Color(0xFF282E36),
    filled: true,
    contentPadding: const EdgeInsets.all(12),
    prefixIcon: const Icon(
      Icons.lock_outline,
      color: Color(0xFF484D54),
    ),
    suffixIcon: IconButton(
      icon: const Icon(
        Icons.remove_red_eye_outlined,
        color: Color(0xFF484D54),
      ),
      onPressed: () {},
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

InputDecoration passwordAuthDecoration(String label) {
  return InputDecoration(
    hintText: label,
    fillColor: const Color(0xFF282E36),
    filled: true,
    contentPadding: const EdgeInsets.all(12),
    prefixIcon: const Icon(
      Icons.lock_outline,
      color: Color(0xFF484D54),
    ),
    suffixIcon: IconButton(
      icon: const Icon(
        Icons.remove_red_eye_outlined,
        color: Color(0xFF484D54),
      ),
      onPressed: () {},
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
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20),
              Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Gabriel Henrique Almeida',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'OUTFIT',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Atacante - Sub 13 - Society',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'OUTFIT',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        onPressed: () {},
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
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                'Jogos escolares de',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Minas Gerais - Jemg',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                ),
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
              child: const Text(
                'Programação',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                ),
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
              child: const Text(
                'Listas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class HealthCard1 extends StatelessWidget {
  const HealthCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      height: 129,
      child: OutlineGradientButton(
        strokeWidth: 1,
        radius: const Radius.circular(12),
        gradient: const LinearGradient(
          colors: <Color>[
            Color(0xFF981DB9),
            Color(0xFF0F76CE),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                const Text(
                  'Status',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'OUTFIT',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF00FF38),
                      width: 5.0,
                    ),
                    color: Colors.transparent,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Recuperado',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'OUTFIT',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 50),
            const Column(
              children: [
                SizedBox(height: 10),
                Text(
                  'Lesão',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'STRETCH',
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Entorse de Tornozelo',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OUTFIT',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  '31/03/23',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OUTFIT',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'a 07/04/23 (7 dias)',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OUTFIT',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
        onTap: () => Navigator.pushNamed(context, 'cardPage'),
      ),
    );
  }
}

class HealthCard2 extends StatelessWidget {
  const HealthCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      height: 129,
      child: OutlineGradientButton(
        strokeWidth: 1,
        radius: const Radius.circular(12),
        gradient: const LinearGradient(
          colors: <Color>[
            Color(0xFF981DB9),
            Color(0xFF0F76CE),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                const Text(
                  'Status',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'OUTFIT',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFE70000),
                      width: 5.0,
                    ),
                    color: Colors.transparent,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Em recuperação',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'OUTFIT',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 50),
            const Column(
              children: [
                SizedBox(height: 10),
                Text(
                  'Lesão',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'STRETCH',
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Entorse de Tornozelo',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OUTFIT',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  '31/03/23',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OUTFIT',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'a 07/04/23 (7 dias)',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OUTFIT',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
        onTap: () => Navigator.pushNamed(context, 'cardPage'),
      ),
    );
  }
}
