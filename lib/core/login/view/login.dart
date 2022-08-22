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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Image.asset(
                              Assets.cidadeLogoWhite,
                              cacheHeight: 100,
                              cacheWidth: 100,
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Portal ',
                                style: GoogleFonts.nanumGothic(
                                  fontSize: 20,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                                /*TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),*/
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Educação',
                                style: GoogleFonts.nanumGothic(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                LoginForm(),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.only(
                          top: screenHeightSize > 667
                              ? screenHeightSize * 0.1
                              : 0),
                      child: Image.asset(
                        Assets.prediosWhite,
                        fit: BoxFit.cover,
                        cacheHeight: 160,
                        cacheWidth: 180,
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
