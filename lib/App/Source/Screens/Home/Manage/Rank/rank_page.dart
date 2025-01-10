import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
              // Seção de pódio
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Segundo lugar
                  PodiumCard2(
                    name: sortedPlayers[1]['name'],
                    overall: sortedPlayers[1]['over'],
                    image: sortedPlayers[1]['image'],
                  ),
                  const SizedBox(width: 10),
                  // Primeiro lugar
                  PodiumCard1(
                    name: sortedPlayers[0]['name'],
                    overall: sortedPlayers[0]['over'],
                    image: sortedPlayers[0]['image'],
                  ),
                  const SizedBox(width: 10),
                  // Terceiro lugar
                  PodiumCard3(
                    name: sortedPlayers[2]['name'],
                    overall: sortedPlayers[2]['over'],
                    image: sortedPlayers[2]['image'],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Lista dos demais jogadores
              Expanded(
                child: ListView.builder(
                  itemCount: sortedPlayers.length - 3,
                  itemBuilder: (context, index) {
                    final player = sortedPlayers[index + 3];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: RankingCard(
                        rank: index + 4,
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

class PodiumCard1 extends StatelessWidget {
  final String name;
  final int overall;
  final String image;

  const PodiumCard1({
    super.key,
    required this.name,
    required this.overall,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/images/coroa.svg',
          height: 40,
          width: 40,
          // ignore: deprecated_member_use
          color: Colors.yellowAccent,
        ),
        ClipOval(
          child: Image.asset(
            image,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: comp16Out(),
        ),
        const SizedBox(height: 10),
        Container(
          width: 35,
          height: 35,
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
            style: comp13Out(),
          ),
        ),
      ],
    );
  }
}

class PodiumCard2 extends StatelessWidget {
  final String name;
  final int overall;
  final String image;

  const PodiumCard2({
    super.key,
    required this.name,
    required this.overall,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.workspace_premium,
          color: Colors.grey,
          size: 30,
        ),
        ClipOval(
          child: Image.asset(
            image,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: comp16Out(),
        ),
        const SizedBox(height: 10),
        Container(
          width: 35,
          height: 35,
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
            style: comp13Out(),
          ),
        ),
      ],
    );
  }
}

class PodiumCard3 extends StatelessWidget {
  final String name;
  final int overall;
  final String image;

  const PodiumCard3({
    super.key,
    required this.name,
    required this.overall,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.workspace_premium,
          color: Colors.brown,
          size: 30,
        ),
        ClipOval(
          child: Image.asset(
            image,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: comp16Out(),
        ),
        const SizedBox(height: 10),
        Container(
          width: 35,
          height: 35,
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
            style: comp13Out(),
          ),
        ),
      ],
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12),
          border: GradientBoxBorder(
            gradient: gradientLk(),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 8),
            // Posição do jogador no ranking
            Text(
              '#$rank',
              style: comp15Out(),
            ),
            const SizedBox(width: 16),
            // Imagem do jogador
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: GradientBoxBorder(
                  width: 2,
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
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // Overall do jogador
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: GradientBoxBorder(
                  width: 2,
                  gradient: gradientLk(),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                overall.toString(),
                style: comp15Out(),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
