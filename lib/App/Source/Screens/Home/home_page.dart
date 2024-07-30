import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avaliation_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/image_manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Passport/passport_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:intl/intl.dart';

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
          decoration: BoxDecoration(
            gradient: gradientLk(),
          ),
          child: NavigationBarTheme(
            data: const NavigationBarThemeData(
              indicatorColor: Colors.transparent,
              overlayColor: WidgetStatePropertyAll(Colors.transparent),
              labelTextStyle: WidgetStatePropertyAll(
                TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OUTFIT',
                  color: Colors.white,
                ),
              ),
              iconTheme: WidgetStatePropertyAll(
                IconThemeData(
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
            child: NavigationBar(
              backgroundColor: Colors.transparent,
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              destinations: [
                NavigationDestination(
                  icon: SvgPicture.asset(
                    'assets/images/homevetor.svg',
                    height: 21,
                    width: 21,
                  ),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(
                    'assets/images/sportvetor.svg',
                    height: 21,
                    width: 21,
                  ),
                  label: 'Avaliações',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(
                    'assets/images/passvetor.svg',
                    height: 21,
                    width: 21,
                  ),
                  label: 'Passaporte B.',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(
                    'assets/images/managevetor.svg',
                    height: 21,
                    width: 21,
                  ),
                  label: 'Gestão',
                ),
              ],
            ),
          )),
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
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => const ExitButton(),
            ),
          ),
        ],
        title: Text(
          'BEM VINDO RICARDO',
          style: comp20Str(),
        ),
      ),
      body: Stack(
        children: [
          const GradientBack(),
          ListView(
            children: [
              Positioned(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      DateFormat.MMMMEEEEd().format(
                        DateTime.now(),
                      ),
                      style: comp15Str(),
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 347,
                      height: 27,
                      child: TextField(
                        style: comp20Out(),
                        decoration: InputDecoration(
                          prefix: const Text('   '),
                          contentPadding: const EdgeInsets.all(1),
                          suffixIcon: const Icon(
                            Icons.search,
                            color: Color(0xFF0F76CE),
                          ),
                          border: GradientOutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(9)),
                            gradient: gradientLk(),
                            width: 1,
                          ),
                          focusedBorder: GradientOutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            gradient: gradientLk(),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Alunos',
                      style: comp20Str(),
                    ),
                    const SizedBox(height: 20),
                    const CardPlayer(),
                    const SizedBox(height: 20),
                    const CardPlayer(),
                    const SizedBox(height: 20),
                    const CardPlayer(),
                    const SizedBox(height: 20),
                    const CardPlayer(),
                    const SizedBox(height: 20),
                    const CardPlayer(),
                    const SizedBox(height: 20),
                    const CardPlayer(),
                    const SizedBox(height: 20),
                    const CardPlayer(),
                    const SizedBox(height: 20),
                    const CardPlayer(),
                    const SizedBox(height: 20),
                    const CardPlayer(),
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
