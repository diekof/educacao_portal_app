import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_assets.dart';
import 'widgets/login_form.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidthSize = MediaQuery.of(context).size.width;
    double screenHeightSize = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SingleChildScrollView(
          child: SizedBox(
            height: screenHeightSize,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenWidthSize,
                  height: screenHeightSize * 0.35,
                  child: Container(
                    width: screenWidthSize,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Image.asset(
                          Assets.cidadeLogoWhite,
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Portal ',
                              style: GoogleFonts.nanumGothic(
                                fontSize: 20,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              /*TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),*/
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Educação',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                LoginForm(),
                Expanded(
                  child: Image.asset(
                    Assets.prediosWhite,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
