import 'package:flutter/material.dart';
import 'package:majed/constant.dart';

import '../view/homescreen.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        // elevation: 10,
        actions: [
          Builder(builder: (context){
          return IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()),

                );

    },
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                    Icons.close,
                    ),
              ),
          );
          }),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/blue.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: child!,
          ),
        ],
      ),
    );
  }
}
