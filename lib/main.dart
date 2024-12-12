import 'package:dess/App/Source/Screens/Filter/club_page.dart';
import 'package:dess/App/Source/Screens/Filter/sports_page.dart';
import 'package:dess/App/Source/Screens/Filter/sub_page.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avatec_page.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avafis.dart';
import 'package:dess/App/Source/Screens/Home/Manage/comp_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/health_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/Rank/rank_page.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avaliation_page.dart';
import 'package:dess/App/Source/Screens/Home/Home/home_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/image_manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Passport/passport_page.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:dess/App/Source/Screens/Register/login_page.dart';
import 'package:dess/App/Source/Screens/Register/register_page.dart';
import 'package:dess/App/Source/Screens/Register/splash_page.dart';
import 'package:dess/App/Source/Screens/Test/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  await initializeDateFormatting('pt_BR', null);
  await dotenv.load(fileName: '.env');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const DesApp());
}

class DesApp extends StatelessWidget {
  const DesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        'initialPage': (context) => const InitialPage(),
        'splashPage': (context) => const SplashPage(),
        'registerPage': (context) => const RegisterPage(),
        'form1Page': (context) => const Form1Page(),
        'form2Page': (context) => const Form2Page(),
        'form3Page': (context) => const Form3Page(),
        'homePage': (context) => const HomePage(
              selectedcategory: '',
              initialCategory: '',
            ),
        'avaliationPage': (context) => const AvaliationPage(
              participantData: {},
              evaluationData: null,
            ),
        'managePage': (context) => const ManagePage(),
        'passportPage': (context) => const PassportPage(
              participantData: {},
            ),
        'imageManagePage': (context) => const ImageManagePage(),
        'compPage': (context) => const CompPage(),
        'rankPage': (context) => const RankPage(),
        'healthPage': (context) => const HealthPage(),
        'cardPage': (context) => const HealthEditor(),
        'loginPage': (context) => const LoginPage(),
        'avafisPage': (context) => const AvafisPage(
              subCriterias: [],
              participantData: {},
            ),
        'avaTec': (context) => const AvatecPage(
              subCriterias: [],
              participantData: {},
            ),
        'infoPage': (context) => const InfoPage(),
        'passAvaliation': (context) => const AvaliationForm(),
      },
    );
  }
}
