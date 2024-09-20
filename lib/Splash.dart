import 'package:flutter/material.dart';
import 'package:pet_care_app/home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomeScreen();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE46764),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                'Make a New Friend!',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Adopt Don\'t shop',
                style: TextStyle(color: Colors.white54, fontSize: 30),
              ),
            ],
          ),
          Container(
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/cat_2.png',
                ),
              ),
            ),
          ),
          Container(
            height: 65,
            width: 260,
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
              child: Text(
                'LETS GO!',
                style: TextStyle(color: Colors.black54, fontSize: 35),
              ),
            ),
          )
        ],
      ),
    );
  }
}
