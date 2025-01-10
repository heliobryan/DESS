import 'package:dess/App/Source/Core/Components/Cards/cards.dart';
import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AvatecPage extends StatefulWidget {
  final List<dynamic> subCriterias;
  final Map<String, dynamic> participantData;

  const AvatecPage({
    super.key,
    required this.subCriterias,
    required this.participantData,
  });

  @override
  State<AvatecPage> createState() => _AvatecPageState();
}

class _AvatecPageState extends State<AvatecPage> {
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
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Técnico',
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
                      widget.participantData['user']['name'],
                      style: comp25Str(),
                    ),
                    Text(
                      '${widget.participantData['position']} - ${widget.participantData['category']} - ${widget.participantData['modality']['name']}',
                      style: comp15Out(),
                    ),
                    Text(
                      '${widget.participantData['team']['name']}',
                      style: comp15Out(),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                    itemCount: widget.subCriterias.length,
                    itemBuilder: (context, index) {
                      final subCriteria = widget.subCriterias[index];
                      return SubCriteriaCard(
                        subCriterias: subCriteria,
                        subCriteria: null,
                        onTap: () {},
                        onSubCriteriaPressed: (List<dynamic> items) {},
                        participantId: '',
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
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
