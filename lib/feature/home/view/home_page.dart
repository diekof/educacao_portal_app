import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Educa',
                style: TextStyle(
                  color: AppColors.colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text(
                'Seja bem-vindo USUÁRIO!',
                style: TextStyle(
                  color: AppColors.colorScheme.secondary,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          actions: [],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        height: size.height * 0.70,
        width: size.width,
        child: const Text('homepage'),
      ),
    );
  }
}
