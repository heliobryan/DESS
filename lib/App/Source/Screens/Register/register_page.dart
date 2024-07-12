import 'package:dess/App/Source/Components/components.dart';
import 'package:dess/App/Source/Auth/autenticator_service.dart';
import 'package:dess/App/Source/Core/snack_bar.dart';
import 'package:flutter/material.dart';

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
  bool wantreg = true;
  final _formKey = GlobalKey<FormState>();
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(height: 50),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      (wantreg) ? 'CADASTRE-SE' : 'ENTRE',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'STRETCH',
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 15),
                        Text(
                          (wantreg)
                              ? 'Já tem uma conta?'
                              : 'Não possui uma conta?',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          child: Text(
                            (wantreg) ? 'Entre' : 'Cadastre-se',
                            style: const TextStyle(
                              fontFamily: 'OUTFIT',
                              color: Color(0xFF0F76CE),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              wantreg = !wantreg;
                            });
                          },
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
                            Visibility(
                              visible: wantreg,
                              child: Column(
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
                              obscureText: true,
                              validator: (String? pass) {
                                if (pass == null) {
                                  return 'Senha Inválida';
                                }
                                if (pass.length < 5) {
                                  return 'Senha muito curta';
                                }
                                return null;
                              },
                              decoration: passAuthDecoration('Senha'),
                            ),
                            Visibility(
                              visible: wantreg,
                              child: Column(
                                children: [
                                  const SizedBox(height: 15),
                                  TextFormField(
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'OUTFIT',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    obscureText: true,
                                    controller: _confirmPass,
                                    validator: (String? value) {
                                      if (value != _passwordController.text) {
                                        return 'As senhas não conferem';
                                      }
                                      return null;
                                    },
                                    decoration: passwordAuthDecoration(
                                        'Digite novamente a senha'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 316,
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
                          (wantreg) ? 'Cadastrar' : 'Entrar ',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'OUTFIT',
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          principalbutton();
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/line.png'),
                        ),
                        Text(
                          '   Ou   ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image(
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
                                    'assets/images/facebookvetor.png',
                                  ),
                                ),
                                Text(
                                  '        Continuar com Facebook',
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
                        const SizedBox(height: 50),
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

  principalbutton() {
    String name = _nameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPass = _confirmPass.text;
    if (_formKey.currentState!.validate()) {
      if (wantreg) {
        print('Entrada Validada');
        _authService
            .signUser(email: email, password: password)
            .then((String? erro) {
          if (erro != null) {
            showSnackBar(context: context, text: erro);
          }
        });
      } else {
        print('Cadastro Validado');
        print(
            '${_emailController.text}, ${_nameController.text}, ${_passwordController.text}');
        _authService.userRegister(
            name: name, password: password, email: email, confirm: confirmPass);
      }
    } else {
      print('Form Inválido');
    }
  }
}
