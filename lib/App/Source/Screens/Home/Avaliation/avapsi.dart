import 'package:dess/App/Source/Core/CardComponents/cards.dart';
import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AvapsiPage extends StatefulWidget {
  final List<dynamic> subCriterias;
  final Map<String, dynamic> participantData;
  const AvapsiPage({
    super.key,
    required this.subCriterias,
    required this.participantData,
  });

  @override
  State<AvapsiPage> createState() => _AvapsiPageState();
}

class _AvapsiPageState extends State<AvapsiPage> {
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
          'Física',
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
                      widget.participantData['user']?['name'] ??
                          'Nome Desconhecido',
                      style: comp25Str(),
                    ),
                    Text(
                      '${widget.participantData['position'] ?? 'Posição Desconhecida'} - ${widget.participantData['modality']?['name'] ?? 'Modalidade Desconhecida'}',
                      style: comp15Out(),
                    ),
                    Text(
                      '${widget.participantData['institution']?['name'] ?? 'Instituição Desconhecida'}',
                      style: comp15Out(),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                    itemCount: widget.subCriterias.length,
                    itemBuilder: (context, index) {
                      final subCriteria = widget.subCriterias[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: SubCriteriaCard(
                          subCriterias: subCriteria,
                          subCriteria: null,
                          onTap: () {},
                          onSubCriteriaPressed: (List<dynamic> items) {},
                        ),
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
