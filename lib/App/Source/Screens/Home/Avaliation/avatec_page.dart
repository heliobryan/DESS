import 'package:dess/App/Source/Core/AvatecComponents/pass_card.dart';
import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:intl/intl.dart';

class AvatecPage extends StatefulWidget {
  const AvatecPage({super.key});

  @override
  State<AvatecPage> createState() => _AvatecPageState();
}

class _AvatecPageState extends State<AvatecPage> {
  bool passState = true;
  bool finalState = false;
  bool controlState = false;
  bool headState = false;
  bool driState = false;
  bool interState = false;
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
          'Técnica',
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
          Center(
            child: Column(
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
                        child: OutlinedButton(
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
                            'Passes',
                            style: comp15Out(),
                          ),
                          onPressed: () {
                            setState(() {
                              passState = !passState;
                              if (finalState = true) {
                                finalState = false;
                              }
                              if (controlState = true) {
                                controlState = false;
                              }
                              if (driState = true) {
                                driState = false;
                              }
                              if (interState = true) {
                                interState = false;
                              }
                              if (headState = true) {
                                headState = false;
                              }
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 105,
                        height: 23,
                        decoration: BoxDecoration(
                          border: GradientBoxBorder(gradient: gradientLk()),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: OutlinedButton(
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
                            'Finalização',
                            style: comp12Out(),
                          ),
                          onPressed: () {
                            setState(() {
                              finalState = !finalState;
                              if (passState = true) {
                                passState = false;
                              }
                              if (controlState = true) {
                                controlState = false;
                              }
                              if (driState = true) {
                                driState = false;
                              }
                              if (interState = true) {
                                interState = false;
                              }
                              if (headState = true) {
                                headState = false;
                              }
                            });
                          },
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
                        child: OutlinedButton(
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
                            'Contr. de bola',
                            style: comp9Out(),
                          ),
                          onPressed: () {
                            setState(() {
                              controlState = !controlState;
                              if (finalState = true) {
                                finalState = false;
                              }
                              if (passState = true) {
                                controlState = false;
                              }
                              if (driState = true) {
                                driState = false;
                              }
                              if (interState = true) {
                                interState = false;
                              }
                              if (headState = true) {
                                headState = false;
                              }
                            });
                          },
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
                        child: OutlinedButton(
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
                            'Cabeceio',
                            style: comp13Out(),
                          ),
                          onPressed: () {
                            setState(() {
                              headState = !headState;
                              if (passState = true) {
                                passState = false;
                              }
                              if (controlState = true) {
                                controlState = false;
                              }
                              if (driState = true) {
                                driState = false;
                              }
                              if (interState = true) {
                                interState = false;
                              }
                              if (finalState = true) {
                                finalState = false;
                              }
                            });
                          },
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
                        child: OutlinedButton(
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
                            'Dribles',
                            style: comp13Out(),
                          ),
                          onPressed: () {
                            setState(() {
                              driState = !driState;
                              if (finalState = true) {
                                finalState = false;
                              }
                              if (controlState = true) {
                                controlState = false;
                              }
                              if (passState = true) {
                                passState = false;
                              }
                              if (interState = true) {
                                interState = false;
                              }
                              if (headState = true) {
                                headState = false;
                              }
                            });
                          },
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
                        child: OutlinedButton(
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
                            'Intercepçẽos',
                            style: comp10Out(),
                          ),
                          onPressed: () {
                            setState(() {
                              interState = !interState;
                              if (finalState = true) {
                                finalState = false;
                              }
                              if (controlState = true) {
                                controlState = false;
                              }
                              if (driState = true) {
                                driState = false;
                              }
                              if (passState = true) {
                                passState = false;
                              }
                              if (headState = true) {
                                headState = false;
                              }
                            });
                          },
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
                            builder: (context) => const CalendarPage())),
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
                Visibility(
                  visible: passState,
                  child: Expanded(
                    child: ListView(
                      children: const [
                        PassCard(),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: finalState,
                  child: Expanded(
                    child: ListView(
                      children: const [
                        PassCard(),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: controlState,
                  child: Expanded(
                    child: ListView(
                      children: const [
                        PassCard(),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: headState,
                  child: Expanded(
                    child: ListView(
                      children: const [
                        PassCard(),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: driState,
                  child: Expanded(
                    child: ListView(
                      children: const [
                        PassCard(),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: interState,
                  child: Expanded(
                    child: ListView(
                      children: const [
                        PassCard(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AvaliationForm extends StatefulWidget {
  const AvaliationForm({super.key});

  @override
  State<AvaliationForm> createState() => _AvaliationFormState();
}

class _AvaliationFormState extends State<AvaliationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
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
          'Técnica',
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
          Center(
            child: Column(
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
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(18),
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          Container(
                            width: 317,
                            height: 117,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: GradientBoxBorder(
                                gradient: gradientLk(),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.check,
                                    size: 30,
                                    color: Colors.green,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Passes certos',
                                    style: comp15Out(),
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    width: 280,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(12)),
                                      border: GradientBoxBorder(
                                        gradient: gradientLk(),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.horizontal_rule_outlined,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '111',
                                          style: comp15Out(),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            width: 317,
                            height: 117,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: GradientBoxBorder(
                                gradient: gradientLk(),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.close,
                                    size: 30,
                                    color: Colors.red,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Passes errados',
                                    style: comp15Out(),
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    width: 280,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(12)),
                                      border: GradientBoxBorder(
                                        gradient: gradientLk(),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.horizontal_rule_outlined,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '111',
                                          style: comp15Out(),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            width: 317,
                            height: 217,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: GradientBoxBorder(
                                gradient: gradientLk(),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.account_circle_outlined,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Nota Final',
                                    style: comp15Out(),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                      border: GradientBoxBorder(
                                        gradient: gradientLk(),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '10',
                                        style: comp16Out(),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 120,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                      border: GradientBoxBorder(
                                        gradient: gradientLk(),
                                      ),
                                    ),
                                    child: Center(
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                              color: Colors.transparent),
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Salvar',
                                          style: comp15Str(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Técnica',
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
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          const BackImageAll(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Datas',
                  style: comp25Str(),
                ),
                const SizedBox(height: 20),
                Text(
                  'Maio',
                  style: comp20Str(),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DateCard(),
                    SizedBox(width: 20),
                    DateCard(),
                    SizedBox(width: 20),
                    DateCardUncheck(),
                    SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DateCard(),
                    SizedBox(width: 20),
                    DateCard(),
                    SizedBox(width: 20),
                    DateCard(),
                    SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DateCard(),
                    SizedBox(width: 18),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
