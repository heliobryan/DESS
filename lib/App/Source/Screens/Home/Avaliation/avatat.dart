import 'package:dess/App/Source/Core/Components/AvaliationComponents/questionnaire.dart';
import 'package:dess/App/Source/Core/Components/cards.dart';
import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AvatatPage extends StatefulWidget {
  final List<dynamic> subCriterias;
  final Map<String, dynamic> participantData;
  const AvatatPage({
    super.key,
    required this.participantData,
    required this.subCriterias,
  });

  @override
  State<AvatatPage> createState() => _AvatatPageState();
}

class _AvatatPageState extends State<AvatatPage> {
  bool quest = false;

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
          'Tático',
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
                // Expanded(
                //   child: ListView.builder(
                //     padding:
                //         const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                //     itemCount: widget.subCriterias.length,
                //     itemBuilder: (context, index) {
                //       final subCriteria = widget.subCriterias[index];

                //       return SubCriteriaCard(
                //         subCriterias: subCriteria,
                //         subCriteria: null,
                //         onTap: () {},
                //         onSubCriteriaPressed: (List<dynamic> items) {},
                //       );
                //     },
                //   ),
                // ),
                SizedBox(
                  width: 325,
                  height: 53,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: GradientBoxBorder(gradient: gradientLk()),
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          quest = !quest;
                        });
                      },
                      child: Text(
                        'Posicionamento',
                        style: comp15Out(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: quest,
                  child: QuestCard(
                    question: '',
                    onSave: (double nota) {},
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
