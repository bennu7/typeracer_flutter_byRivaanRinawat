import 'package:flutter/material.dart';
import 'package:typeracer/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
            // maxWidth: size.width * 0.6,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Create/Join a room to play",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: size.height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomBotton(
                    text: "Create",
                    onTap: () {
                      // Navigator.of(context).pushNamed('/create-room');
                      Navigator.pushNamed(context, '/create-room');
                    },
                    isHome: true,
                  ),
                  CustomBotton(
                    text: "Join",
                    onTap: () {
                      Navigator.pushNamed(context, '/join-room');
                    },
                    isHome: true,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
