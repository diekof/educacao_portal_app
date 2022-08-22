import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/login/view/login.dart';
import '../../../core/widgets/client/view/client_form.dart';
import '../store/welcome_store.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    
    final _size = MediaQuery.of(context).size;
    final _cor = Theme.of(context).colorScheme;

    double widthScreenSize = MediaQuery.of(context).size.width;
    double heightScreenSize = MediaQuery.of(context).size.height-24;
    Color primaryColor = Theme.of(context).colorScheme.primary;
    Color onBackground = Theme.of(context).colorScheme.onBackground;
    Color secondaryColor = Theme.of(context).colorScheme.secondary;
    
    WelcomeStore welcomeStore = WelcomeStore();
    PageController? _controller;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: heightScreenSize,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView(
                    onPageChanged: (value) {
                      welcomeStore.setPage(value);
                    },
                    children: [
                      Container(
                        color: secondaryColor,
                        padding: const EdgeInsets.all(20),
                        height: heightScreenSize,
                        width: _size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Seja Bem-Vindo ao app educa!',
                              style: Theme.of(context).textTheme.headlineMedium,
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              child: Image.asset(
                                Assets.professoraAula,
                                scale: 1,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: heightScreenSize,
                        width: widthScreenSize,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Explicação?',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: secondaryColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset(
                                Assets.ilustracaoLocal,
                                scale: 1,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: widthScreenSize * 0.8,
                              height: heightScreenSize * 0.2,
                              decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const ClientForm(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const Login(),
                                    ),
                                    ModalRoute.withName('/'),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: widthScreenSize * 0.4,
                                  height: heightScreenSize * 0.04,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Confirmar',
                                    style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 19,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      width: 200,
                      height: 20,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Observer(builder: (_) {
                                return Container(
                                  padding: const EdgeInsets.all(5),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: (welcomeStore.page == 0
                                        ? primaryColor
                                        : onBackground),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                );
                              }),
                              const SizedBox(
                                width: 10,
                              ),
                              Observer(builder: (_) {
                                return Container(
                                  padding: const EdgeInsets.all(5),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: (welcomeStore.page == 1
                                        ? primaryColor
                                        : onBackground),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                );
                              }),
                              const SizedBox(
                                width: 10,
                              ),
                              Observer(builder: (_) {
                                return Container(
                                  padding: const EdgeInsets.all(5),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: (welcomeStore.page == 2
                                        ? primaryColor
                                        : onBackground),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                );
                              }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
