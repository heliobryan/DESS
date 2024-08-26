import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avafis.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avaliation_page.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avatec_page.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CardPlayer extends StatefulWidget {
  final Map<String, dynamic> participants;

  const CardPlayer({
    super.key,
    required this.participants,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '${widget.participants['user']['name']} ${widget.participants['user']['last_name']}',
                              style: comp16Out(),
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '${widget.participants['position']} - ${widget.participants['category']} - ${widget.participants['modality']['name']}',
                              style: comp16Out(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AvaliationPage(
                    participantData: widget.participants,
                  ),
                ),
              ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/gradientline.png'),
              ],
            ),
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
            if (widget.criterias['name'] == 'Física') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AvafisPage(
                    subCriterias: widget.criterias['subcriteria'],
                    participantData: widget.participantData,
                  ),
                ),
              );
            } else if (widget.criterias['name'] == 'Técnica') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AvatecPage(
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

  const SubCriteriaCard({
    super.key,
    required this.subCriterias,
    required subCriteria,
  });

  @override
  State<SubCriteriaCard> createState() => _SubCriteriaCardState();
}

class _SubCriteriaCardState extends State<SubCriteriaCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
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
              side: const BorderSide(color: Colors.transparent)),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.subCriterias['name'],
                style: comp10Out(),
              ),
            ],
          ),
        ),
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
