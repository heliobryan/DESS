import 'dart:async';
import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:dess/App/Source/Screens/Register/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double _logoOpacity = 0.0;
  double _textOpacity = 0.0;
  double _initialPageOpacity = 0.0;
  double _textWelcomeOpacity = 0.0;
  double _textDescriptionOpacity = 0.0;
  double _buttonOpacity = 0.0;
  double _transitionOpacity = 0.0;
  bool _showInitialPage = false;
  bool _showLoginPage = false;
  // ignore: prefer_final_fields
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _logoOpacity = 1.0;
      });
    });

    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _textOpacity = 1.0;
      });
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _logoOpacity = 0.0;
        _textOpacity = 0.0;
      });

      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          _showInitialPage = true;
          _initialPageOpacity = 1.0;

          Future.delayed(const Duration(milliseconds: 300), () {
            setState(() {
              _textWelcomeOpacity = 1.0;
            });
          });

          Future.delayed(const Duration(milliseconds: 600), () {
            setState(() {
              _textDescriptionOpacity = 1.0;
            });
          });

          Future.delayed(const Duration(milliseconds: 900), () {
            setState(() {
              _buttonOpacity = 1.0;
            });
          });
        });
      });
    });
  }

  void _startTransition() {
    setState(() {
      _transitionOpacity = 1.0; // Ativa a transição
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _showLoginPage = true; // Mostra a tela de login
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          if (!_showLoginPage)
            AnimatedOpacity(
              opacity: _transitionOpacity == 1.0 ? 0.0 : 1.0,
              duration: const Duration(seconds: 1),
              child: Center(
                child: _showInitialPage
                    ? AnimatedOpacity(
                        opacity: _initialPageOpacity,
                        duration: const Duration(seconds: 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedOpacity(
                              opacity: _textWelcomeOpacity,
                              duration: const Duration(milliseconds: 500),
                              child: Column(
                                children: [
                                  Text(
                                    'Seja bem vindo ao ',
                                    style: comp20Str(),
                                  ),
                                  const SizedBox(height: 10),
                                  SvgPicture.asset('assets/images/lodo.svg'),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Aprimore seu desempenho',
                                    style: comp15Str(),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 100),
                            AnimatedOpacity(
                              opacity: _textDescriptionOpacity,
                              duration: const Duration(milliseconds: 500),
                              child: Column(
                                children: [
                                  Text(
                                    'O nosso app (DES) visa desenvolver um aplicativo',
                                    style: comp15Out(),
                                  ),
                                  Text(
                                    'mobile que auxilie escolas esportivas,',
                                    style: comp15Out(),
                                  ),
                                  Text(
                                    'responsáveis, profissionais esporte, esportistas',
                                    style: comp15Out(),
                                  ),
                                  Text(
                                    'de diversas modalidades no acompanhamento e',
                                    style: comp15Out(),
                                  ),
                                  Text(
                                    'aprimoramento de seu desempenho.',
                                    style: comp15Out(),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 100),
                            AnimatedOpacity(
                              opacity: _buttonOpacity,
                              duration: const Duration(milliseconds: 500),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  backgroundColor: const Color(0xFF981DB9),
                                ),
                                // ignore: sort_child_properties_last
                                child: Text(
                                  '  ENTRE AGORA!  ',
                                  style: comp15Str(),
                                ),
                                onPressed: _startTransition,
                              ),
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AnimatedOpacity(
                            opacity: _logoOpacity,
                            duration: const Duration(seconds: 1),
                            child: SvgPicture.asset('assets/images/loggg.svg'),
                          ),
                          const SizedBox(height: 40),
                          AnimatedOpacity(
                            opacity: _textOpacity,
                            duration: const Duration(seconds: 1),
                            child: SvgPicture.asset('assets/images/lodo.svg'),
                          ),
                          const SizedBox(height: 80),
                          if (_isLoading)
                            const CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                        ],
                      ),
              ),
            ),
          AnimatedOpacity(
            opacity: _transitionOpacity,
            duration: const Duration(seconds: 2),
            child: _showLoginPage
                ? const LoginPage() // Transição suave para a LoginPage
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
