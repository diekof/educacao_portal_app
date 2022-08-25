import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/login/view/login.dart';
import '../../../core/widgets/client/services/stores/client_select_store.dart';
import '../../../core/widgets/client/view/client_form.dart';
import '../store/welcome_store.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  WelcomeStore welcomeStore = WelcomeStore();
  ClientSelect? clientSelect = ClientSelect();
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _cor = Theme.of(context).colorScheme;

    final topPadding = MediaQuery.of(context).padding.top;
    double heightScreenSize = _size.height - topPadding;
    Color secondaryColor = Theme.of(context).colorScheme.secondary;

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
                        color: _cor.primary,
                        width: _size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AspectRatio(
                              aspectRatio: 3 / 1,
                              child: Image.asset(
                                Assets.cidadeLogoWhite,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: heightScreenSize * 0.30),
                              child: Text(
                                'Seja Bem-Vindo(a)!',
                                style: TextStyle(
                                  color: _cor.secondary,
                                  fontSize: 25,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: _cor.primary,
                        height: heightScreenSize,
                        width: _size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: _size.width * 0.1),
                              child: Text(
                                WelcomeStrings.titulo,
                                style: TextStyle(
                                    color: _cor.secondary, fontSize: 40),
                              ),
                            ),
                            Container(
                              width: _size.width * 0.8,
                              height: heightScreenSize * 0.5,
                              child: Text(
                                WelcomeStrings.explicacao,
                                style: TextStyle(
                                    color: _cor.secondary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: _cor.primary,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(top: _size.height * 0.09),
                              child: Image.asset(
                                Assets.pinLocal,
                                scale: 0.8,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: _size.width * 0.8,
                              height: heightScreenSize * 0.5,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: _size.height * 0.02,
                                        bottom: _size.height * 0.02),
                                    child: Text(
                                      'Selecione sua região',
                                      style: TextStyle(
                                          color: _cor.secondary, fontSize: 20),
                                    ),
                                  ),
                                  ClientForm(),
                                  Observer(builder: (_) {
                                    return InkWell(
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
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: _size.height * 0.04,
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: _size.width * 0.5,
                                          height: heightScreenSize * 0.05,
                                          decoration: BoxDecoration(
                                            color: _cor.secondary,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                            'PROSSEGUIR',
                                            style: TextStyle(
                                              color: _cor.primary,
                                              fontSize: 19,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                                ],
                              ),
                            ),
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
                                        ? _cor.secondary
                                        : _cor.onPrimary),
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
                                        ? _cor.secondary
                                        : _cor.onPrimary),
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
                                        ? _cor.secondary
                                        : _cor.onPrimary),
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
