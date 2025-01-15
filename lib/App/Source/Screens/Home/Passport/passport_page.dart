import 'package:dess/App/Source/Core/Components/Cards/cards.dart';
import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class PassportPage extends StatefulWidget {
  final Map<String, dynamic> participantData;

  const PassportPage({
    super.key,
    required this.participantData,
  });

  @override
  State<PassportPage> createState() => _PassportPageState();
}

class _PassportPageState extends State<PassportPage> {
  bool fifaCard = false;
  bool dataCard = true;
  bool radarGraphVisible = false;

  // Método para obter o nome da imagem com base no id do participante
  String getParticipantImage() {
    switch (widget.participantData['user']['id']) {
      case 67:
        return 'assets/images/arthur.jpeg';
      case 69:
        return 'assets/images/bernardo.jpeg';
      case 71:
        return 'assets/images/joao.jpeg';
      case 70:
        return 'assets/images/marcos.jpeg';
      case 68:
        return 'assets/images/riquelme.jpeg';
      default:
        return 'assets/images/default.jpeg';
    }
  }

  final playerStats = {
    'Físico': 85,
    'Ritmo': 90,
    'Finalização': 80,
    'Passe': 75,
    'Agilidade': 95,
    'Drible': 88,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context, 'homePage'),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.exit_to_app_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => const ExitButton(),
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Passaporte Biológico',
          style: comp20Str(),
        ),
      ),
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          const Center(child: BackgroudImage()),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
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
                child: ClipOval(
                  child: Image.asset(
                    getParticipantImage(),
                    fit: BoxFit.cover,
                    width: 105,
                    height: 105,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    widget.participantData['user']['name'] ?? '',
                    style: comp25Str(),
                  ),
                  Text(
                    '${widget.participantData['position'] ?? ''} - ${widget.participantData['category'] ?? ''} - ${widget.participantData['modality']['name'] ?? ''}',
                    style: comp15Out(),
                  ),
                  Text(
                    '${widget.participantData['team']['name'] ?? ''}',
                    style: comp15Out(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Botão para exibir o gráfico
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
                        side: const BorderSide(color: Colors.transparent),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          radarGraphVisible = true;
                          fifaCard = false;
                          dataCard = false;
                        });
                      },
                      child: Center(
                        child: Text(
                          'Gráfico',
                          style: comp15Out(),
                        ),
                      ),
                    ),
                  ),
                  // Botão para exibir o PlayerCard
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
                        side: const BorderSide(color: Colors.transparent),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          fifaCard = true;
                          radarGraphVisible = false;
                          dataCard = false;
                        });
                      },
                      child: Center(
                        child: Text(
                          'Card',
                          style: comp15Out(),
                        ),
                      ),
                    ),
                  ),
                  // Botão para exibir o DataCard
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
                        side: const BorderSide(color: Colors.transparent),
                      ),
                      onPressed: () {
                        setState(() {
                          dataCard = true;
                          fifaCard = false;
                          radarGraphVisible = false;
                        });
                      },
                      child: Center(
                        child: Text(
                          'Dados',
                          style: comp15Out(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Exibe o RadarGraph se radarGraphVisible for true
              Visibility(
                visible: radarGraphVisible,
                child: RadarGraph(playerStats: playerStats),
              ),
              // Exibe o PlayerCard se fifaCard for true
              Visibility(
                visible: fifaCard,
                child: PlayerCard(
                  participantData: widget.participantData,
                ),
              ),
              // Exibe o DataCard se dataCard for true
              Visibility(
                visible: dataCard,
                child: DataCard(
                  participantData: widget.participantData,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RadarGraph extends StatelessWidget {
  final Map<String, int> playerStats;

  const RadarGraph({super.key, required this.playerStats});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 500,
        child: RadarChart(
          ticks: const [20, 40, 60, 80, 100],
          features: [
            'Físico',
            'Ritmo',
            'Finalização',
            'Passe',
            'Agilidade',
            'Drible',
          ],
          data: [playerStats.values.map((e) => e.toDouble()).toList()],
          graphColors: const [Color(0xFF981DB9)],
          outlineColor: Colors.white,
          axisColor: Colors.white,
          featuresTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          sides: playerStats.length,
        ),
      ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  final Map<String, dynamic> participantData;

  final Map<String, Map<String, dynamic>> playersData = {
    'ARTHUR': {
      'over': 86,
      'rit': 90,
      'fin': 80,
      'pas': 90,
      'dri': 75,
      'agi': 90,
      'fis': 90,
    },
    'ATHOS': {
      'over': 79,
      'rit': 65,
      'fin': 90,
      'pas': 80,
      'dri': 75,
      'agi': 80,
      'fis': 85,
    },
    'BERNARDO A': {
      'over': 85,
      'rit': 85,
      'fin': 80,
      'pas': 90,
      'dri': 75,
      'agi': 90,
      'fis': 90,
    },
    'MARCOS VINICIUS': {
      'over': 84,
      'rit': 90,
      'fin': 60,
      'pas': 75,
      'dri': 75,
      'agi': 90,
      'fis': 90,
    },
    'RIQUELME LUCAS': {
      'over': 83,
      'rit': 90,
      'fin': 80,
      'pas': 80,
      'dri': 80,
      'agi': 90,
      'fis': 80,
    },
    'JOÃO VICTOR': {
      'over': 80,
      'rit': 75,
      'fin': 80,
      'pas': 80,
      'dri': 70,
      'agi': 90,
      'fis': 80,
    },
  };

  PlayerCard({super.key, required this.participantData});

  String getParticipantImage() {
    switch (participantData['user']['id']) {
      case 67: // ID do participante "Arthur"
        return 'assets/images/arthur.jpeg';
      case 69: // ID do participante "Bernardo"
        return 'assets/images/bernardo.jpeg';
      case 71: // ID do participante "João"
        return 'assets/images/joao.jpeg';
      case 70: // ID do participante "Marcos"
        return 'assets/images/marcos.jpeg';
      case 68: // ID do participante "Riquelme"
        return 'assets/images/riquelme.jpeg';
      default:
        return 'assets/images/default.jpeg';
    }
  }

  @override
  Widget build(BuildContext context) {
    final playerName = participantData['user']['name'];

    final playerData = playersData[playerName];

    if (playerData == null) {
      return Center(
        child: Text('Jogador não encontrado'),
      );
    }

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
                        '${playerData['over'] ?? 0}',
                        style: comp28Out(),
                      ),
                      Text(
                        participantData['position'] ?? 'Position',
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
                    child: ClipOval(
                      child: Image.asset(
                        getParticipantImage(), // Exibe a imagem do jogador
                        fit: BoxFit.cover,
                        width: 105,
                        height: 105,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                playerName?.toUpperCase() ?? 'NOME',
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
                          'RIT: ${playerData['rit'] ?? 0}',
                          style: comp20Out(),
                        ),
                        Text(
                          'FIN: ${playerData['fin'] ?? 0}',
                          style: comp20Out(),
                        ),
                        Text(
                          'PAS: ${playerData['pas'] ?? 0}',
                          style: comp20Out(),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          'DRI: ${playerData['dri'] ?? 0}',
                          style: comp20Out(),
                        ),
                        Text(
                          'AGI: ${playerData['agi'] ?? 0}',
                          style: comp20Out(),
                        ),
                        Text(
                          'FÍS: ${playerData['fis'] ?? 0}',
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
