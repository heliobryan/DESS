import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class RankPage extends StatefulWidget {
  const RankPage({super.key});

  @override
  State<RankPage> createState() => _RankPageState();
}

class _RankPageState extends State<RankPage> {
  // Lista de jogadores com seus dados
  final List<Map<String, dynamic>> playersData = [
    {
      'id': 67,
      'name': 'ARTHUR',
      'over': 86,
      'image': 'assets/images/arthur.jpeg',
    },
    {
      'id': 00,
      'name': 'ATHOS',
      'over': 79,
      'image': 'assets/images/default.png',
    },
    {
      'id': 69,
      'name': 'BERNARDO A',
      'over': 85,
      'image': 'assets/images/bernardo.jpeg',
    },
    {
      'id': 70,
      'name': 'MARCOS VINICIUS',
      'over': 84,
      'image': 'assets/images/marcos.jpeg',
    },
    {
      'id': 68,
      'name': 'RIQUELME LUCAS',
      'over': 83,
      'image': 'assets/images/riquelme.jpeg',
    },
    {
      'id': 71,
      'name': 'JOÃO VICTOR',
      'over': 80,
      'image': 'assets/images/joao.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Ordenar os jogadores pelo overall em ordem decrescente
    final sortedPlayers = playersData
      ..sort((a, b) => b['over'].compareTo(a['over']));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context, 'managePage'),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.exit_to_app_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Ranqueamento',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'STRETCH',
          ),
        ),
      ),
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Ranking',
                  style: comp25Out(),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: sortedPlayers.length,
                  itemBuilder: (context, index) {
                    final player = sortedPlayers[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: RankingCard(
                        rank: index + 1,
                        name: player['name'],
                        overall: player['over'],
                        image: player['image'],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RankingCard extends StatelessWidget {
  final int rank;
  final String name;
  final int overall;
  final String image;

  const RankingCard({
    super.key,
    required this.rank,
    required this.name,
    required this.overall,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 310, // Reduz a largura do card para centralizá-lo
        height: 80, // Reduz a altura do card
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            border: GradientBoxBorder(
              gradient: gradientLk(),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 8),
              // Número do ranking
              Text(
                '$rank',
                style: comp15Out(),
              ),
              const SizedBox(width: 16),
              // Foto do jogador com contorno circular
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: GradientBoxBorder(
                    width: 3,
                    gradient: gradientLk(),
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    image,
                    width: 45,
                    height: 45,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              // Nome do jogador
              Expanded(
                child: Text(
                  name,
                  style: comp15Out(),
                ),
              ),
              // Circle com o Overall
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: GradientBoxBorder(
                    width: 3,
                    gradient: gradientLk(),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  overall.toString(),
                  style: comp15Out(),
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}
