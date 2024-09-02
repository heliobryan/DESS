import 'package:dess/App/Source/Core/CardComponents/cards.dart';
import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avatec_page.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:intl/intl.dart';

class AvafisPage extends StatefulWidget {
  final List<dynamic> subCriterias;
  final Map<String, dynamic> participantData;

  const AvafisPage({
    super.key,
    required this.subCriterias,
    required this.participantData,
  });

  @override
  State<AvafisPage> createState() => _AvafisPageState();
}

class _AvafisPageState extends State<AvafisPage> {
  List<dynamic> selectedQuantitativeItems = [];

  void showQuantitativeItems(List<dynamic> items) {
    setState(() {
      selectedQuantitativeItems = items;
    });
  }

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
                const SizedBox(height: 10),
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
                        builder: (context) => const CalendarPage(),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        DateFormat.yMd('pt_BR').format(
                          DateTime.now(),
                        ),
                        style: comp15Out(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Wrap(
                      spacing: 10, // Espaçamento horizontal entre os cards
                      runSpacing:
                          10, // Espaçamento vertical entre as linhas de cards
                      children:
                          List.generate(widget.subCriterias.length, (index) {
                        final subCriteria = widget.subCriterias[index];

                        return SubCriteriaCard(
                          subCriterias: subCriteria,
                          subCriteria: null,
                          onTap: () {},
                          onSubCriteriaPressed: (List<dynamic> items) {},
                        );
                      }),
                    ),
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
