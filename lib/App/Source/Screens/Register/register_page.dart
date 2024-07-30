import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Forms/form_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  bool showPass = true;
  final _formKey = GlobalKey<FormState>();
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const SizedBox(height: 50),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CADASTRE-SE',
                      style: comp20Str(),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 15),
                        Text(
                          'Já possui uma conta?',
                          style: comp16Out(),
                        ),
                        TextButton(
                          child: const Text(
                            'Entre',
                            style: TextStyle(
                              fontFamily: 'OUTFIT',
                              color: Color(0xFF0F76CE),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'loginPage'),
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
                            Column(
                              children: [
                                const SizedBox(height: 15),
                                TextFormField(
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  controller: _nameController,
                                  validator: (String? value) {
                                    if (value == null) {
                                      return 'Nome Inválido';
                                    }
                                    if (value.length < 4) {
                                      return 'Nome muito curto';
                                    }
                                    return null;
                                  },
                                  decoration: nameAuthDecoration('Nome'),
                                ),
                              ],
                            ),
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
                            Column(
                              children: [
                                const SizedBox(height: 15),
                                TextFormField(
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'OUTFIT',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    obscureText: showPass,
                                    controller: _confirmPass,
                                    validator: (String? value) {
                                      if (value != _passwordController.text) {
                                        return 'As senhas não conferem';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Digite novamente a senha',
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
                                    )),
                              ],
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
                        onPressed: () {
                          userRegister();
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
                            onPressed: () {
                              signInWithGoogle();
                            },
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

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // ignore: use_build_context_synchronously
    Navigator.pushNamed(context, 'homePage');
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  userRegister() async {
    _firebaseAuth
        .createUserWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text)
        .then((UserCredential userCredential) {
      userCredential.user!.updateDisplayName(_nameController.text);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Form1Page()),
          (route) => false);
      // ignore: argument_type_not_assignable_to_error_handler
    }).catchError((FirebaseAuthException firebaseAuthException) {});
  }
}
