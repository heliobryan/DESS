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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Text(
                  'CADASTRE-SE',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'STRETCH',
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Já tem uma conta?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'OUTFIT',
                    fontWeight: FontWeight.bold,
                  ),
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
                      Navigator.popAndPushNamed(context, 'loginPage'),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 316,
              height: 45,
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                ),
                cursorColor: Colors.white,
                controller: _nameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_2_outlined,
                    color: Color(0xFF464C54),
                  ),
                  label: Text(
                    ' Nome',
                    style: TextStyle(
                      fontFamily: 'OUTFIT',
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF666F7B),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF464C54),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 316,
              height: 45,
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                ),
                cursorColor: Colors.white,
                keyboardType: TextInputType.text,
                controller: _emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Color(0xFF464C54),
                  ),
                  label: Text(
                    ' Email',
                    style: TextStyle(
                      fontFamily: 'OUTFIT',
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF666F7B),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF464C54),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 316,
              height: 45,
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                ),
                cursorColor: Colors.white,
                keyboardType: TextInputType.text,
                controller: _passwordController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Color(0xFF464C54),
                  ),
                  label: Text(
                    ' Senha',
                    style: TextStyle(
                      fontFamily: 'OUTFIT',
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF666F7B),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF464C54),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 316,
              height: 45,
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                ),
                cursorColor: Colors.white,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Color(0xFF464C54),
                  ),
                  label: Text(
                    ' Digite novamente a senha',
                    style: TextStyle(
                      fontFamily: 'OUTFIT',
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF666F7B),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF464C54),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
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
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'OUTFIT',
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
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
    );
  }
}
