import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avaliation_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/image_manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Passport/passport_page.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

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
  final _firebaseAuth = FirebaseAuth.instance;

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
              signOut();
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
          const GradientBack(),
          ListView(
            children: const [
              Center(
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
                    SizedBox(height: 20),
                    CardPlayer(),
                    SizedBox(height: 20),
                    CardPlayer(),
                    SizedBox(height: 20),
                    CardPlayer(),
                    SizedBox(height: 20),
                    CardPlayer(),
                    SizedBox(height: 20),
                    CardPlayer(),
                    SizedBox(height: 20),
                    CardPlayer(),
                    SizedBox(height: 20),
                    CardPlayer(),
                    SizedBox(height: 20),
                    CardPlayer(),
                    SizedBox(height: 20),
                    CardPlayer(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  signOut() async {
    await _firebaseAuth.signOut().then(
          (user) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const InitialPage(),
            ),
          ),
        );
  }
}
