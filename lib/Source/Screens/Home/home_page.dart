import 'package:dess/Source/Screens/Home/Avaliation/avaliation_page.dart';
import 'package:dess/Source/Screens/Home/Manage/image_manage_page.dart';
import 'package:dess/Source/Screens/Home/Manage/manage_page.dart';
import 'package:dess/Source/Screens/Home/passport_page.dart';
import 'package:flutter/material.dart';
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
    const ImageManagePage(),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const SizedBox(
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
            const SizedBox(height: 20),
            const Text(
              'Alunos',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'STRETCH',
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 341,
              height: 62,
              child: OutlineGradientButton(
                strokeWidth: 1,
                radius: const Radius.circular(12),
                gradient: const LinearGradient(
                  colors: <Color>[Color(0xFF981DB9), Color(0xFF0F76CE)],
                ),
                child: const Row(
                  children: [],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 341,
              height: 62,
              child: OutlineGradientButton(
                strokeWidth: 1,
                radius: const Radius.circular(12),
                gradient: const LinearGradient(
                  colors: <Color>[Color(0xFF981DB9), Color(0xFF0F76CE)],
                ),
                child: const Row(
                  children: [],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 341,
              height: 62,
              child: OutlineGradientButton(
                strokeWidth: 1,
                radius: const Radius.circular(12),
                gradient: const LinearGradient(
                  colors: <Color>[Color(0xFF981DB9), Color(0xFF0F76CE)],
                ),
                child: const Row(
                  children: [],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 341,
              height: 62,
              child: OutlineGradientButton(
                strokeWidth: 1,
                radius: const Radius.circular(12),
                gradient: const LinearGradient(
                  colors: <Color>[Color(0xFF981DB9), Color(0xFF0F76CE)],
                ),
                child: const Row(
                  children: [],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 341,
              height: 62,
              child: OutlineGradientButton(
                strokeWidth: 1,
                radius: const Radius.circular(12),
                gradient: const LinearGradient(
                  colors: <Color>[Color(0xFF981DB9), Color(0xFF0F76CE)],
                ),
                child: const Row(
                  children: [],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 341,
              height: 62,
              child: OutlineGradientButton(
                strokeWidth: 1,
                radius: const Radius.circular(12),
                gradient: const LinearGradient(
                  colors: <Color>[Color(0xFF981DB9), Color(0xFF0F76CE)],
                ),
                child: const Row(
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
