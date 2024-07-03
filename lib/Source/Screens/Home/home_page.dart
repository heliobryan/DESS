import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  final List<Widget> _screens = [
    const Home1Page(),
    const AvaliationPage(),
    const PassportPage(),
    const ManagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentPageIndex],
      bottomNavigationBar: Container(
        height: 56,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF981DB9),
              Color(0xFF0F76CE),
            ],
          ),
        ),
        child: BottomNavigationBarTheme(
          data: const BottomNavigationBarThemeData(
            showUnselectedLabels: false,
            elevation: 0,
            unselectedLabelStyle: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
              fontFamily: 'OUTFIT',
            ),
            selectedLabelStyle: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
              fontFamily: 'OUTFIT',
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: currentPageIndex,
            onTap: (int index) {
              setState(
                () {
                  currentPageIndex = index;
                },
              );
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home',
                activeIcon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.sports_soccer_outlined),
                label: 'Avaliações',
                activeIcon: Icon(Icons.sports_soccer),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.assignment_ind_outlined),
                label: 'Passaporte B.',
                activeIcon: Icon(Icons.assignment_ind),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Image(image: AssetImage('assets/images/gestvetor.png')),
                label: 'Gestão',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF1E1E1E),
    );
  }
}

class Home1Page extends StatefulWidget {
  const Home1Page({super.key});

  @override
  State<Home1Page> createState() => _Home1PageState();
}

class _Home1PageState extends State<Home1Page> {
  final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
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
        title: const Text(
          'BEM VINDDO',
          style: TextStyle(
            fontFamily: 'STRETCH',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            SizedBox(
              width: 347,
              height: 27,
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OUTFIT',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefix: Text('   '),
                  contentPadding: EdgeInsets.all(1),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF0F76CE),
                  ),
                  border: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                    width: 1,
                  ),
                  focusedBorder: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Alunos',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'STRETCH',
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AvaliationPage extends StatelessWidget {
  const AvaliationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
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
        title: const Text(
          'Avaliações',
          style: TextStyle(
            fontFamily: 'STRETCH',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 295,
              child: OutlineGradientButton(
                strokeWidth: 1,
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                ),
                radius: const Radius.circular(12),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.sports_soccer,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 60),
                    Text(
                      'Técnica',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 295,
              child: OutlineGradientButton(
                strokeWidth: 1,
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                ),
                radius: const Radius.circular(12),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    ImageIcon(
                      AssetImage(
                        'assets/images/neurology.png',
                      ),
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 45),
                    Text(
                      'Psicológica',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 295,
              child: OutlineGradientButton(
                strokeWidth: 1,
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                ),
                radius: const Radius.circular(12),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    ImageIcon(
                      AssetImage('assets/images/exercise.png'),
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 80),
                    Text(
                      'Física',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 295,
              child: OutlineGradientButton(
                strokeWidth: 1,
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                ),
                radius: const Radius.circular(12),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    ImageIcon(
                      AssetImage('assets/images/sprint.png'),
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 70),
                    Text(
                      'Tática',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class PassportPage extends StatelessWidget {
  const PassportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          'Passaporte B',
          style: TextStyle(
            fontFamily: 'STRETCH',
            fontSize: 20,
            color: Colors.white,
          ),
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
      ),
    );
  }
}

class ManagePage extends StatelessWidget {
  const ManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 115),
                const Column(
                  children: [
                    Text(
                      'Gestão de',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'STRETCH',
                      ),
                    ),
                    Text(
                      'Carreira',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'STRETCH',
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 70),
                IconButton(
                  icon: const Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 330,
                  height: 129,
                  child: OutlineGradientButton(
                    radius: const Radius.circular(12),
                    strokeWidth: 1,
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/editorgradient.png'),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              'Gestão de Imagem',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'OUTFIT',
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 193,
                              height: 23,
                              decoration: const BoxDecoration(
                                border: GradientBoxBorder(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF981DB9),
                                      Color(0xFF0F76CE),
                                    ],
                                  ),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Melhores desempenhos',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'OUTFIT',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 330,
                  height: 129,
                  child: OutlineGradientButton(
                    radius: const Radius.circular(12),
                    strokeWidth: 1,
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/event.png'),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              'Competições',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'OUTFIT',
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 193,
                              height: 23,
                              decoration: const BoxDecoration(
                                border: GradientBoxBorder(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF981DB9),
                                      Color(0xFF0F76CE),
                                    ],
                                  ),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Já foram jogadas',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'OUTFIT',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 330,
                  height: 129,
                  child: OutlineGradientButton(
                    radius: const Radius.circular(12),
                    strokeWidth: 1,
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/cash.png'),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              'Patrocínio',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'OUTFIT',
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 193,
                              height: 23,
                              decoration: const BoxDecoration(
                                border: GradientBoxBorder(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF981DB9),
                                      Color(0xFF0F76CE),
                                    ],
                                  ),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Propostas',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'OUTFIT',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 330,
                  height: 129,
                  child: OutlineGradientButton(
                    strokeWidth: 1,
                    radius: const Radius.circular(12),
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/health.png'),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              'Saúde',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'OUTFIT',
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 193,
                              height: 23,
                              decoration: const BoxDecoration(
                                border: GradientBoxBorder(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF981DB9),
                                      Color(0xFF0F76CE),
                                    ],
                                  ),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Lesões ou Fraturas',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'OUTFIT',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF1E1E1E),
    );
  }
}
