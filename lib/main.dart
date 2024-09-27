import 'package:dess/App/Source/Screens/Forms/form_page.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avatec_page.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avafis.dart';
import 'package:dess/App/Source/Screens/Home/Manage/comp_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/health_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/sponsor_page.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avaliation_page.dart';
import 'package:dess/App/Source/Screens/Home/home_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/image_manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Passport/passport_page.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:dess/App/Source/Screens/Register/login_page.dart';
import 'package:dess/App/Source/Screens/Register/register_page.dart';
import 'package:dess/App/Source/Screens/Register/splash_page.dart';
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
      home: const SplashPage(),
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
            ),
        'managePage': (context) => const ManagePage(),
        'passportPage': (context) => const PassportPage(
              participantData: {},
              subCriterias: [],
            ),
        'imageManagePage': (context) => const ImageManagePage(),
        'compPage': (context) => const CompPage(),
        'sponsorPage': (context) => const SponsorPage(),
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
