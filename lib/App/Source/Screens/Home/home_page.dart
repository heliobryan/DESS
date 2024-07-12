import 'dart:ui';

import 'package:dess/App/Source/Auth/autenticator_service.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avaliation_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/image_manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/manage_page.dart';
import 'package:dess/App/Source/Screens/Home/passport_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            selectedIconTheme: IconThemeData(
              color: Colors.white,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              fontFamily: 'OUTFIT',
            ),
            selectedLabelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              fontFamily: 'OUTFIT',
            ),
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            elevation: 0,
          ),
          child: BottomNavigationBar(
            fixedColor: Colors.white,
            unselectedItemColor: Colors.white,
            currentIndex: currentPageIndex,
            onTap: (int index) {
              setState(
                () {
                  currentPageIndex = index;
                },
              );
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/homevetor.svg',
                  height: 21,
                  width: 27,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/sportvetor.svg',
                  height: 21,
                  width: 21,
                ),
                label: 'Avaliações',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/passvetor.svg',
                  height: 20,
                  width: 18,
                ),
                label: 'Passaporte B.',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/managevetor.svg',
                  height: 21,
                  width: 18,
                ),
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
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.exit_to_app_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              AuthService().signOut();
            },
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
      body: Stack(
        children: [
          ListView(
            children: [
              Center(
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
            ],
          ),
        ],
      ),
    );
  }
}

class GradientPage extends StatelessWidget {
  const GradientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 282,
                height: 146,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF981DB9),
                      Color(0xFF0F76CE),
                      Color(0xFF0F76CE),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 110),
                  child: Container(),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF981DB9),
                          Color(0xFF981DB9),
                          Color(0xFF0F76CE),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                      child: Container(),
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
