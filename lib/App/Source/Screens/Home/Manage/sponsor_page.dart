import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:flutter/material.dart';

class SponsorPage extends StatefulWidget {
  const SponsorPage({super.key});

  @override
  State<SponsorPage> createState() => _SponsorPageState();
}

class _SponsorPageState extends State<SponsorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
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
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => const ExitButton(),
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Patrocínio',
          style: comp20Str(),
        ),
      ),
      body: Stack(
        children: [
          const GradientBack(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                'Propostas',
                style: comp20Out(),
              ),
              const SizedBox(height: 120),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 50),
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Adidas',
                        style: comp13Out(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Image(
                    image: AssetImage('assets/images/gradientline.png'),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 50),
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Adidas',
                        style: comp13Out(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png')),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 50),
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Adidas',
                        style: comp13Out(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Image(
                    image: AssetImage('assets/images/gradientline.png'),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 50),
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Adidas',
                        style: comp13Out(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  SizedBox(
                    child: Container(
                      height: 40,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        gradient: gradientLk(),
                      ),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          side: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        child: Text(
                          'Salvar',
                          style: comp25Out(),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
