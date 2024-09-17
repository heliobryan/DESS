import 'dart:convert';
import 'dart:developer';
import 'package:dess/App/Source/Core/CardComponents/cards.dart';
import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Home/Manage/image_manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Passport/passport_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/date_symbol_data_local.dart';

class HomePage extends StatefulWidget {
  final String initialCategory;

  const HomePage(
      {super.key,
      required String selectedcategory,
      required this.initialCategory});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      Home1Page(
        selectedCategory: widget.initialCategory,
      ),
      const PassportPage(
        participantData: {},
        subCriterias: [],
      ),
      const ManagePage(),
      const ImageManagePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentPageIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
      backgroundColor: const Color(0xFF1E1E1E),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
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
      ),
    );
  }
}

class Home1Page extends StatefulWidget {
  final String selectedCategory;

  const Home1Page({
    super.key,
    required this.selectedCategory,
  });

  @override
  State<Home1Page> createState() => _Home1PageState();
}

class _Home1PageState extends State<Home1Page> {
  Map<String, dynamic> userDados = {};

  List participantsList = [];
  List filteredParticipantsList = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    userInfo();
    getParticipants(widget.selectedCategory);
    initializeDateFormatting();
    searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    setState(() {
      filteredParticipantsList = participantsList.where((participant) {
        String participantName = participant['user']['name'].toLowerCase();
        String searchQuery = searchController.text.toLowerCase();
        return participantName.contains(searchQuery);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
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
          'BEM VINDO ${(userDados['name'] ?? '').toUpperCase() + '!'}',
          style: comp20Str(),
        ),
      ),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Text(
                        DateFormat.MMMMEEEEd('pt_BR').format(
                          DateTime.now(),
                        ),
                        style: comp15Str(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: searchController,
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
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Alunos',
                  style: comp20Str(),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    itemBuilder: (context, index) {
                      final participants = filteredParticipantsList[index];
                      return CardPlayer(
                        participants: participants,
                      );
                    },
                    itemCount: filteredParticipantsList.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> userInfo() async {
    try {
      String expenseListApi = dotenv.get('API_HOST', fallback: '');

      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      var url = Uri.parse('${expenseListApi}api/user');
      final token = sharedPreferences.getString('token');

      log('token $token');
      var restAwnser = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      log('response ${restAwnser.body}');
      if (restAwnser.statusCode == 200) {
        final decode = jsonDecode(restAwnser.body);
        setState(() {
          userDados = decode;
        });

        log('DADOS DO USUARIO FINAL $userDados');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> getParticipants(String category) async {
    try {
      String expenseListApi = dotenv.get('API_HOST', fallback: '');

      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var url = Uri.parse('${expenseListApi}api/participants');
      final token = sharedPreferences.getString('token');

      var restAwnser = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (restAwnser.statusCode == 200) {
        final decode = jsonDecode(restAwnser.body);
        setState(() {
          participantsList = decode[category] ?? [];
          filteredParticipantsList = participantsList;
        });
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
