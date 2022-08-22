import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          
          leading: Icon(Icons.close),
          title: Text(
            'Educa',
            style: TextStyle(
              color: AppColors.colorScheme.secondary,
              fontWeight: FontWeight.bold,
            ),
          ),
          flexibleSpace: Column(
            children: [
              Icon(Icons.close),
              Icon(Icons.close),
              Icon(Icons.close),
            ],
          ),
          actions: [Icon(Icons.close)],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        height: heightSize * 0.9,
        width: widthSize,
        color: Colors.amber,
        child: Text('homepage'),
      ),
    );
  }
}
