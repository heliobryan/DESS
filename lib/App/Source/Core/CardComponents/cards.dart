import 'package:dess/App/Source/Core/AvaliationComponents/quantitativecard.dart';
import 'package:dess/App/Source/Core/AvaliationComponents/subjetivecard.dart';
import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avafis.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avaliation_page.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avapsi.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avatec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:dess/App/Source/Core/AvaliationComponents/measurablecard.dart';
import 'package:intl/intl.dart';

class CardPlayer extends StatefulWidget {
  final Map<String, dynamic> participantData;
  final Function(Map<String, dynamic>) onTap;

  const CardPlayer({
    super.key,
    required this.participantData,
    required this.onTap,
  });

  @override
  State<CardPlayer> createState() => _CardPlayerState();
}

class _CardPlayerState extends State<CardPlayer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
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
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '${widget.participantData['user']?['name'] ?? 'Nome Desconhecido'} ${widget.participantData['user']?['last_name'] ?? ''}',
                              style: comp16Out(),
                              textAlign: TextAlign.center, // Centraliza o texto
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '${widget.participantData['position'] ?? 'Posição Desconhecida'} - ${widget.participantData['modality']?['name'] ?? 'Modalidade Desconhecida'} - ${widget.participantData['category'] ?? 'Categoria Desconhecida'}',
                              style: comp16Out(),
                              textAlign: TextAlign.center, // Centraliza o texto
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              onPressed: () => widget.onTap(widget.participantData),
            ),
          );
        },
      ),
    );
  }
}

class CompCard extends StatefulWidget {
  final Map<String, dynamic> event;

  const CompCard({
    super.key,
    required this.event,
  });

  @override
  State<CompCard> createState() => _CompCardState();
}

class _CompCardState extends State<CompCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Stack(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 150,
                  child: Text(
                    widget.event['name'],
                    style: comp13Out(),
                  ),
                ),
                const ProCard(),
                const SizedBox(width: 7),
                const ProCard1(),
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class CriteriaCard extends StatefulWidget {
  final Map<String, dynamic> criterias;
  final Map<String, dynamic> participantData;

  const CriteriaCard({
    super.key,
    required this.criterias,
    required this.participantData,
  });

  @override
  State<CriteriaCard> createState() => _CriteriaCardState();
}

class _CriteriaCardState extends State<CriteriaCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
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
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
          onPressed: () {
            if (widget.criterias['name'] == 'Físico') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AvafisPage(
                    subCriterias: widget.criterias['subcriteria'],
                    participantData: widget.participantData,
                  ),
                ),
              );
            } else if (widget.criterias['name'] == 'Técnico') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AvatecPage(
                    subCriterias: widget.criterias['subcriteria'],
                    participantData: widget.participantData,
                  ),
                ),
              );
            } else if (widget.criterias['name'] == 'Mental') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AvapsiPage(
                    subCriterias: widget.criterias['subcriteria'],
                    participantData: widget.participantData,
                  ),
                ),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.criterias['name'],
                  style: comp25Out(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SubCriteriaCard extends StatefulWidget {
  final Map<String, dynamic> subCriterias;
  final VoidCallback onTap;
  final Function(List items) onSubCriteriaPressed;

  const SubCriteriaCard({
    super.key,
    required this.subCriterias,
    required this.onTap,
    required this.onSubCriteriaPressed,
    required subCriteria,
  });

  @override
  State<SubCriteriaCard> createState() => _SubCriteriaCardState();
}

class _SubCriteriaCardState extends State<SubCriteriaCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 125,
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
                side: const BorderSide(color: Colors.transparent),
              ),
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  widget.subCriterias['name'] ?? 'Sem Nome',
                  style: comp12Out(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Visibility(
            visible: _isExpanded,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: (widget.subCriterias['items'] as List<dynamic>?)
                        ?.map<Widget>((item) {
                      if (item['aspect'] == 'quantitative') {
                        int passesFeitos = item['passesFeitos'] ?? 0;
                        int passesCertos = item['passesCertos'] ?? 0;
                        int passesErrados = item['passesErrados'] ?? 0;
                        double notaFinal =
                            (item['notaFinal'] as double?) ?? 0.0;

                        return Column(
                          children: [
                            QuantitativeCard(
                              title: item['name'] ?? 'Sem Título',
                              passesFeitos: passesFeitos,
                              correctPass: passesCertos,
                              incorrectPass: passesErrados,
                              notaFinal: notaFinal,
                            ),
                            const SizedBox(height: 10),
                          ],
                        );
                      } else if (item['aspect'] == 'measurable') {
                        // Lógica para exibir o MeasurableCard
                        return Column(
                          children: [
                            MeasurableCard(
                              title: item['name'] ?? 'Sem Título',
                              measurableValue: item['measurableValue'] ?? 0,
                              measurement: '',
                              unit: '',
                            ),
                            const SizedBox(height: 10),
                          ],
                        );
                      } else if (item['aspect'] == 'subjective') {
                        // Lógica para exibir o SubjetiveCard
                        return Column(
                          children: [
                            SubjetiveCard(
                              onSave: (double nota) {},
                            ),
                            const SizedBox(height: 10),
                          ],
                        );
                      }
                      return const SizedBox.shrink();
                    }).toList() ??
                    [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AgeCard extends StatefulWidget {
  final String category;
  final Function(String) onCategorySelected;

  const AgeCard({
    super.key,
    required this.category,
    required this.onCategorySelected,
  });

  @override
  State<AgeCard> createState() => _AgeCardState();
}

class _AgeCardState extends State<AgeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 341,
      height: 62,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
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
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          side: const BorderSide(color: Colors.transparent),
        ),
        child: Center(
          child: Text(
            widget.category,
            style: comp40Out(),
          ),
        ),
        onPressed: () {
          widget.onCategorySelected(widget.category);
        },
      ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  const PlayerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/images/bordervetor.svg',
              width: 150,
              height: 400,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              'assets/images/manel2.svg',
              width: 150,
              height: 350,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '70',
                        style: comp28Out(),
                      ),
                      Text(
                        'ATA',
                        style: comp20Out(),
                      ),
                      const SizedBox(height: 5),
                      SvgPicture.asset('assets/images/gleydon.svg'),
                      const SizedBox(height: 5),
                      const Icon(
                        Icons.shield_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(width: 25),
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
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Aluno'.toUpperCase(),
                style: comp20Out(),
              ),
              const SizedBox(
                height: 5,
              ),
              SvgPicture.asset('assets/images/dias.svg'),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          '80 RIT',
                          style: comp20Out(),
                        ),
                        Text(
                          '80 FIN',
                          style: comp20Out(),
                        ),
                        Text(
                          '80 PAS',
                          style: comp20Out(),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          '80 DRI',
                          style: comp20Out(),
                        ),
                        Text(
                          '80 DEF',
                          style: comp20Out(),
                        ),
                        Text(
                          '80 FÍS',
                          style: comp20Out(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AgendaCard extends StatelessWidget {
  final dynamic event; // Recebe os dados do evento

  const AgendaCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    String evaluationName = event['eventday']['event']['name'];
    String evaluationDate = event['eventday']['date'];
    DateTime parsedDate = DateTime.parse(evaluationDate);

    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: GradientBoxBorder(
            gradient: gradientLk(),
          ),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AvaliationPage(
                  participantData: event['eventday'],
                ),
              ),
            );
          },
          style: ButtonStyle(
            // ignore: deprecated_member_use
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
            // ignore: deprecated_member_use
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
          ),
          child: Container(
            width: 301,
            height: 62,
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                // Ícone no início
                const Icon(
                  Icons.assignment_outlined,
                  size: 40,
                  color: Colors.white,
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      evaluationName,
                      style: comp11Out(),
                    ),
                    Text(
                      'Dia ${DateFormat.yMd('pt_BR').format(parsedDate)}',
                      style: comp11Out(),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DataCard extends StatefulWidget {
  const DataCard({super.key});

  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 243,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: GradientBoxBorder(
          gradient: gradientLk(),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dados Biológicos Atuais',
              style: comp25Out(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Peso:',
                  style: comp20Out(),
                ),
                Text(
                  ' 45 KG',
                  style: comp20nor(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Altura:',
                  style: comp20Out(),
                ),
                Text(
                  ' 150 cm',
                  style: comp20nor(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Idade:',
                  style: comp20Out(),
                ),
                Text(
                  ' 13',
                  style: comp20nor(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'IMC:',
                  style: comp20Out(),
                ),
                Text(
                  ' 20',
                  style: comp20nor(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AgendaData extends StatefulWidget {
  final Function(int) onMonthChanged;

  const AgendaData({super.key, required this.onMonthChanged});

  @override
  State<AgendaData> createState() => _AgendaDataState();
}

class _AgendaDataState extends State<AgendaData> {
  final List<String> _units = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro',
  ];

  late int _selectedUnitIndex;

  @override
  void initState() {
    super.initState();

    DateTime now = DateTime.now();
    _selectedUnitIndex = now.month - 1;
  }

  void _updateMonth(int month) {
    widget.onMonthChanged(month);
  }

  void _toggleUnit() {
    setState(() {
      _selectedUnitIndex = (_selectedUnitIndex + 1) % _units.length;
      Future.delayed(Duration.zero, () {
        _updateMonth(_selectedUnitIndex + 1);
      });
    });
  }

  void _unToggleUnit() {
    setState(() {
      _selectedUnitIndex =
          (_selectedUnitIndex - 1 + _units.length) % _units.length;
      Future.delayed(Duration.zero, () {
        _updateMonth(_selectedUnitIndex + 1);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: GradientBoxBorder(
          gradient: gradientLk(),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: _unToggleUnit,
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              child: Text(
                _units[_selectedUnitIndex],
                style: comp16Out(),
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: _toggleUnit,
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
      ),
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
