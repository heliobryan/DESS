import 'package:shared_preferences/shared_preferences.dart';

Future<bool> exitVerify() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  await sharedPreferences.clear();
  return true;
}
