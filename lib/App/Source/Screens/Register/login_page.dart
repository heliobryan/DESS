import 'dart:convert';
import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool showPass = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          ListView(
            children: [
              const SizedBox(height: 100),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/ENNTRE.png'),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 15),
                        Text(
                          'Não possui uma conta?',
                          style: comp16Out(),
                        ),
                        TextButton(
                          child: const Text(
                            'Cadastre-se',
                            style: TextStyle(
                              fontFamily: 'OUTFIT',
                              color: Color(0xFF0F76CE),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'registerPage'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            const SizedBox(height: 15),
                            TextFormField(
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold,
                              ),
                              controller: _emailController,
                              validator: (String? value) {
                                if (value == null) {
                                  return 'Email Inválido';
                                }
                                if (value.length < 5) {
                                  return 'Email muito curto';
                                }
                                if (!value.contains('@')) {
                                  return 'Email Inválido';
                                }
                                if (!value.contains('.com')) {
                                  return 'Email Inválido';
                                }
                                return null;
                              },
                              decoration: emailAuthDecoration('Email'),
                            ),
                            const SizedBox(height: 15),
                            TextFormField(
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold,
                              ),
                              controller: _passwordController,
                              obscureText: showPass,
                              validator: (String? pass) {
                                if (pass == null) {
                                  return 'Senha Inválida';
                                }
                                if (pass.length < 5) {
                                  return 'Senha muito curta';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Senha',
                                fillColor: const Color(0xFF282E36),
                                filled: true,
                                contentPadding: const EdgeInsets.all(12),
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
                                  color: Color(0xFF484D54),
                                ),
                                suffixIcon: IconButton(
                                  icon: const Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Color(0xFF484D54),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      showPass = !showPass;
                                    });
                                  },
                                ),
                                hintStyle: const TextStyle(
                                  color: Color(0xFF666F7B),
                                  fontFamily: 'OUTFIT',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF464C54),
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFAD0000),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFAD0000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 330,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: const Color(0xFF981DB9),
                        ),
                        child: Text(
                          'Entrar ',
                          style: comp16Out(),
                        ),
                        onPressed: () async {
                          FocusScopeNode currentFocus = FocusScope.of(context);
                          if (_formKey.currentState!.validate()) {
                            bool success = await userLogin();
                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                            if (success) {
                              Navigator.pushReplacement(
                                  // ignore: use_build_context_synchronously
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            } else {
                              _passwordController.clear();
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/line.png'),
                        ),
                        Text(
                          '   Ou   ',
                          style: comp16Out(),
                        ),
                        const Image(
                          image: AssetImage('assets/images/line.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Column(
                      children: [
                        SizedBox(
                          width: 316,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'assets/images/googlevetor.png',
                                  ),
                                ),
                                Text(
                                  '         Continuar com Google',
                                  style: TextStyle(
                                    color: Color(0xFF121212),
                                    fontSize: 16,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
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

  final snackBar = const SnackBar(
    content: Text(
      'Email ou senha são inválidos',
      textAlign: TextAlign.center,
    ),
    backgroundColor: Colors.red,
  );

  Future<bool> userLogin() async {
    // ignore: unused_local_variable
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var url = Uri.parse('https://fd99-45-70-34-167.ngrok-free.app/api/login');
    var restAwnser = await http.post(
      url,
      body: {
        'email': _emailController.text,
        'password': _passwordController.text,
      },
    );
    if (restAwnser.statusCode == 200) {
      // ignore: prefer_interpolation_to_compose_strings, avoid_print
      print('token' + jsonDecode(restAwnser.body)['token']);
      final decode = jsonDecode(restAwnser.body);

      await sharedPreferences.setString(
        'token',
        decode['token'],
      );
      return true;
    } else {
      // ignore: avoid_print
      print(jsonDecode(restAwnser.body));
      return false;
    }
  }
}
